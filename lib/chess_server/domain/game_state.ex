defmodule ChessServer.Domain.GameState do
  @moduledoc """
  The aggregate root for a Chess Game.
  """

  alias ChessServer.Domain.{Board, Move, MoveValidator, Piece, Position}
  alias ChessServer.Domain.Logic.GameRules

  defstruct [
    :game_id,
    :white_player,
    :black_player,
    :board,
    :turn_color,
    :status,
    :move_count,
    :en_passant_target,
    :castling_rights,
    :half_move_clock
  ]

  def new(game_id, white_player, black_player) do
    %__MODULE__{
      game_id: game_id,
      white_player: white_player,
      black_player: black_player,
      board: Board.initial_setup(),
      turn_color: :white,
      status: :active,
      move_count: 0,
      en_passant_target: nil,
      castling_rights: %{
        white_king: true,
        white_queen: true,
        black_king: true,
        black_queen: true
      },
      half_move_clock: 0
    }
  end

  def make_move(%__MODULE__{status: :active} = state, %Move{} = move) do
    case MoveValidator.valid_move?(state, move) do
      :ok ->
        apply_move(state, move)

      {:error, reason} -> {:error, reason}
    end
  end

  def make_move(%__MODULE__{}, _), do: {:error, :game_over}

  defp apply_move(state, move) do
    piece = Board.get_piece(state.board, move.from)
    target_piece = Board.get_piece(state.board, move.to)

    # 1. Update Board (Basic Move)
    # Check for En Passant Capture special case:
    # If pawn moves diagonally to en_passant_target, we must remove the captured pawn.
    is_ep_capture = en_passant_capture?(state, move, piece)
    board_after_capture = if is_ep_capture do
      capture_pos = if state.turn_color == :white,
        do: %{move.to | rank: move.to.rank - 1},
        else: %{move.to | rank: move.to.rank + 1}

      # We need to construct position struct properly, can't just update map if it is a struct
      # But Position is a struct.
      capture_pos_struct = struct(Position, file: capture_pos.file, rank: capture_pos.rank)
      Board.remove_piece(state.board, capture_pos_struct)
    else
      state.board
    end

    {:ok, board_moved} = Board.move_piece(board_after_capture, move.from, move.to)

    # 2. Handle Castling (Move Rook)
    board_final = if castling_move?(piece, move) do
      handle_castling_rook(board_moved, move)
    else
      board_moved
    end

    # 3. Handle Promotion
    board_final = if promotion?(piece, move) do
      promoted_piece = Piece.new(piece.color, move.promotion || :queen)
      Board.place_piece(board_final, move.to, promoted_piece)
    else
      board_final
    end

    # 4. Update En Passant Target
    new_ep_target = if double_pawn_push?(piece, move) do
      direction = if piece.color == :white, do: 1, else: -1
      {:ok, pos} = Position.new(move.from.file, move.from.rank + direction)
      pos
    else
      nil
    end

    # 5. Update Castling Rights
    new_castling_rights = update_castling_rights(state.castling_rights, piece, move, state.board)

    # 6. Update Half-Move Clock
    # Reset if pawn move or capture
    new_clock = if piece.type == :pawn || target_piece != nil || is_ep_capture do
      0
    else
      state.half_move_clock + 1
    end

    # 7. Next Turn
    next_turn = if state.turn_color == :white, do: :black, else: :white

    # Build next state candidate
    next_state = %{state |
      board: board_final,
      turn_color: next_turn,
      move_count: state.move_count + 1,
      en_passant_target: new_ep_target,
      castling_rights: new_castling_rights,
      half_move_clock: new_clock
    }

    # 8. Check Game Over (Checkmate/Stalemate/50-Move)
    new_status = if new_clock >= 100 do
      :draw_50_move_rule
    else
      GameRules.check_status(next_state)
    end

    {:ok, %{next_state | status: new_status}}
  end

  defp en_passant_capture?(state, move, piece) do
    piece.type == :pawn &&
    state.en_passant_target == move.to &&
    move.from.file != move.to.file # Diagonal move
  end

  defp double_pawn_push?(piece, move) do
    piece.type == :pawn && abs(move.to.rank - move.from.rank) == 2
  end

  defp castling_move?(piece, move) do
    piece.type == :king && abs(move.to.file - move.from.file) == 2
  end

  defp handle_castling_rook(board, move) do
    rank = move.to.rank
    {rook_from_file, rook_to_file} = if move.to.file == 6 do # King side
      {7, 5}
    else # Queen side
      {0, 3}
    end

    {:ok, from} = Position.new(rook_from_file, rank)
    {:ok, to} = Position.new(rook_to_file, rank)

    {:ok, new_board} = Board.move_piece(board, from, to)
    new_board
  end

  defp promotion?(piece, move) do
    piece.type == :pawn && (move.to.rank == 0 || move.to.rank == 7)
  end

  defp update_castling_rights(rights, piece, move, board) do
    # 1. If King moves, lose rights for that color
    rights = if piece.type == :king do
      prefix = if piece.color == :white, do: "white", else: "black"
      rights
      |> Map.put(String.to_atom("#{prefix}_king"), false)
      |> Map.put(String.to_atom("#{prefix}_queen"), false)
    else
      rights
    end

    # 2. If Rook moves, lose rights for that side
    rights = if piece.type == :rook do
      cond do
        move.from.file == 0 && move.from.rank == 0 -> Map.put(rights, :white_queen, false)
        move.from.file == 7 && move.from.rank == 0 -> Map.put(rights, :white_king, false)
        move.from.file == 0 && move.from.rank == 7 -> Map.put(rights, :black_queen, false)
        move.from.file == 7 && move.from.rank == 7 -> Map.put(rights, :black_king, false)
        true -> rights
      end
    else
      rights
    end

    # 3. If Rook is captured, opponent loses rights for that side
    target_piece = Board.get_piece(board, move.to)
    if target_piece && target_piece.type == :rook do
      cond do
        move.to.file == 0 && move.to.rank == 0 -> Map.put(rights, :white_queen, false)
        move.to.file == 7 && move.to.rank == 0 -> Map.put(rights, :white_king, false)
        move.to.file == 0 && move.to.rank == 7 -> Map.put(rights, :black_queen, false)
        move.to.file == 7 && move.to.rank == 7 -> Map.put(rights, :black_king, false)
        true -> rights
      end
    else
      rights
    end
  end
end
