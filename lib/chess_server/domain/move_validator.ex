defmodule ChessServer.Domain.MoveValidator do
  @moduledoc """
  Validates moves based on chess rules.
  """
  alias ChessServer.Domain.{Board, Move, Piece, Position, GameState}
  alias ChessServer.Domain.Logic.CheckValidator

  # Now accepts GameState instead of Board
  def valid_move?(%GameState{} = state, %Move{} = move) do
    # 1. Check if piece exists at 'from'
    piece = Board.get_piece(state.board, move.from)

    cond do
      is_nil(piece) -> {:error, :no_piece}
      piece.color != state.turn_color -> {:error, :wrong_turn}
      move.from == move.to -> {:error, :same_square}
      true ->
        with :ok <- check_piece_rules(state, move, piece),
             :ok <- check_if_move_leaves_king_in_check(state, move) do
          :ok
        else
          error -> error
        end
    end
  end

  # Backward compatibility if needed, but we should update callers
  def valid_move?(%Board{} = board, %Move{} = move, turn_color) do
    # Create a dummy state for basic validation
    state = %GameState{
      board: board,
      turn_color: turn_color,
      en_passant_target: nil,
      castling_rights: %{white_king: false, white_queen: false, black_king: false, black_queen: false}
    }
    valid_move?(state, move)
  end


  defp check_piece_rules(state, move, %Piece{type: :pawn} = piece), do: validate_pawn(state, move, piece)
  defp check_piece_rules(state, move, %Piece{type: :knight} = piece), do: validate_knight(state.board, move, piece)
  defp check_piece_rules(state, move, %Piece{type: :bishop} = piece), do: validate_bishop(state.board, move, piece)
  defp check_piece_rules(state, move, %Piece{type: :rook} = piece), do: validate_rook(state.board, move, piece)
  defp check_piece_rules(state, move, %Piece{type: :queen} = piece), do: validate_queen(state.board, move, piece)
  defp check_piece_rules(state, move, %Piece{type: :king} = piece), do: validate_king(state, move, piece)

  # --- Check Validation ---

  defp check_if_move_leaves_king_in_check(state, move) do
    # Simulate move
    # Note: This simulation is simplified. It doesn't handle en passant removal or castling rook move.
    # However, for check validation:
    # - En Passant: removing captured pawn is important because it might open a line.
    # - Castling: handled separately in king validation (cannot castle through check).
    # - Regular move: just moving the piece is enough.

    board = state.board
    piece = Board.get_piece(board, move.from)

    # Handle En Passant simulation for check
    board_simulated = if en_passant_capture?(state, move, piece) do
      capture_pos = if piece.color == :white,
        do: %{move.to | rank: move.to.rank - 1},
        else: %{move.to | rank: move.to.rank + 1}
      capture_pos_struct = struct(Position, file: capture_pos.file, rank: capture_pos.rank)

      board
      |> Board.remove_piece(capture_pos_struct)
      |> Board.remove_piece(move.from)
      |> Board.place_piece(move.to, piece)
    else
      board
      |> Board.remove_piece(move.from)
      |> Board.place_piece(move.to, piece)
    end

    if CheckValidator.is_in_check?(board_simulated, state.turn_color) do
      {:error, :king_in_check}
    else
      :ok
    end
  end

  defp en_passant_capture?(state, move, piece) do
    piece.type == :pawn &&
    state.en_passant_target == move.to &&
    move.from.file != move.to.file
  end

  # --- Validation Logic ---

  defp validate_pawn(state, move, piece) do
    board = state.board
    direction = if piece.color == :white, do: 1, else: -1
    dx = move.to.file - move.from.file
    dy = move.to.rank - move.from.rank

    target = Board.get_piece(board, move.to)

    cond do
      # Move forward 1
      dx == 0 && dy == direction && is_nil(target) -> :ok
      # Move forward 2 (initial)
      dx == 0 && dy == 2 * direction && is_nil(target) &&
      ((piece.color == :white && move.from.rank == 1) || (piece.color == :black && move.from.rank == 6)) ->
        # Check path is clear
        mid_rank = move.from.rank + direction
        {:ok, mid_pos} = Position.new(move.from.file, mid_rank)
        if Board.get_piece(board, mid_pos) == nil, do: :ok, else: {:error, :blocked}

      # Capture
      abs(dx) == 1 && dy == direction && target != nil && target.color != piece.color -> :ok

      # En Passant
      abs(dx) == 1 && dy == direction && target == nil && state.en_passant_target == move.to -> :ok

      true -> {:error, :invalid_pawn_move}
    end
  end

  defp validate_knight(board, move, piece) do
    dx = abs(move.to.file - move.from.file)
    dy = abs(move.to.rank - move.from.rank)

    target = Board.get_piece(board, move.to)

    if (dx == 1 && dy == 2) || (dx == 2 && dy == 1) do
      if target == nil || target.color != piece.color, do: :ok, else: {:error, :friendly_fire}
    else
      {:error, :invalid_knight_move}
    end
  end

  defp validate_bishop(board, move, piece) do
    if is_diagonal(move) do
       check_path_clear(board, move, piece)
    else
      {:error, :invalid_bishop_move}
    end
  end

  defp validate_rook(board, move, piece) do
    if is_straight(move) do
       check_path_clear(board, move, piece)
    else
      {:error, :invalid_rook_move}
    end
  end

  defp validate_queen(board, move, piece) do
    if is_diagonal(move) || is_straight(move) do
       check_path_clear(board, move, piece)
    else
      {:error, :invalid_queen_move}
    end
  end

  defp validate_king(state, move, piece) do
    board = state.board
    dx = abs(move.to.file - move.from.file)
    dy = abs(move.to.rank - move.from.rank)

    cond do
       # Standard move
       dx <= 1 && dy <= 1 ->
          target = Board.get_piece(board, move.to)
          if target == nil || target.color != piece.color, do: :ok, else: {:error, :friendly_fire}

       # Castling (simple check if rights exist and path clear, not checking check yet)
       dx == 2 && dy == 0 ->
         validate_castling(state, move, piece)

       true -> {:error, :invalid_king_move}
    end
  end

  defp validate_castling(state, move, piece) do
    # Castling rules:
    # 1. King not in check (handled by check_if_move_leaves_king_in_check?)
    #    No, "cannot castle out of check". So start position must not be in check.
    # 2. Path clear (handled).
    # 3. King does not pass through check (handled here or check_if_move_leaves_king_in_check?).
    #    `check_if_move_leaves_king_in_check` checks the FINAL position.
    #    We also need to check the INTERMEDIATE square.

    if CheckValidator.is_in_check?(state.board, piece.color) do
      {:error, :cannot_castle_from_check}
    else
      rank = if piece.color == :white, do: 0, else: 7
      if move.from.rank != rank || move.to.rank != rank do
         {:error, :invalid_castling}
      else
        # King side: file 4 -> 6 (g1/g8). Passes through 5 (f1/f8).
        # Queen side: file 4 -> 2 (c1/c8). Passes through 3 (d1/d8).
        case move.to.file do
          6 -> # King side
            if can_castle_kingside?(state, piece.color), do: check_castling_path_safe(state, piece, 5), else: {:error, :castling_not_allowed}
          2 -> # Queen side
            if can_castle_queenside?(state, piece.color), do: check_castling_path_safe(state, piece, 3), else: {:error, :castling_not_allowed}
          _ -> {:error, :invalid_castling}
        end
      end
    end
  end

  defp check_castling_path_safe(state, piece, file_through) do
    # Check if square 'file_through' is attacked
    rank = if piece.color == :white, do: 0, else: 7
    {:ok, pos} = Position.new(file_through, rank)

    # Simulate King at pos
    board_simulated =
      state.board
      |> Board.remove_piece(Position.new(4, rank) |> elem(1)) # Remove king from start
      |> Board.place_piece(pos, piece) # Place king at intermediate

    if CheckValidator.is_in_check?(board_simulated, piece.color) do
      {:error, :castling_through_check}
    else
      :ok
    end
  end

  defp can_castle_kingside?(state, color) do
    rights = state.castling_rights
    allowed = if color == :white, do: rights.white_king, else: rights.black_king

    if allowed do
      rank = if color == :white, do: 0, else: 7
      # Check f and g squares empty
      {:ok, f} = Position.new(5, rank)
      {:ok, g} = Position.new(6, rank)

      Board.get_piece(state.board, f) == nil && Board.get_piece(state.board, g) == nil
    else
      false
    end
  end

  defp can_castle_queenside?(state, color) do
    rights = state.castling_rights
    allowed = if color == :white, do: rights.white_queen, else: rights.black_queen

    if allowed do
      rank = if color == :white, do: 0, else: 7
      # Check b, c, d squares empty
      {:ok, b} = Position.new(1, rank)
      {:ok, c} = Position.new(2, rank)
      {:ok, d} = Position.new(3, rank)

      Board.get_piece(state.board, b) == nil &&
      Board.get_piece(state.board, c) == nil &&
      Board.get_piece(state.board, d) == nil
    else
      false
    end
  end

  # --- Helpers ---

  defp is_diagonal(move) do
    abs(move.to.file - move.from.file) == abs(move.to.rank - move.from.rank)
  end

  defp is_straight(move) do
    move.to.file == move.from.file || move.to.rank == move.from.rank
  end

  defp check_path_clear(board, move, piece) do
    dx = sign(move.to.file - move.from.file)
    dy = sign(move.to.rank - move.from.rank)

    if path_clear?(board, move.from, move.to, dx, dy) do
       target = Board.get_piece(board, move.to)
       if target == nil || target.color != piece.color, do: :ok, else: {:error, :friendly_fire}
    else
      {:error, :path_blocked}
    end
  end

  defp path_clear?(board, current, target, dx, dy) do
    {:ok, next_pos} = Position.new(current.file + dx, current.rank + dy)

    if next_pos == target do
      true
    else
      if Board.get_piece(board, next_pos) != nil do
        false
      else
        path_clear?(board, next_pos, target, dx, dy)
      end
    end
  end

  defp sign(0), do: 0
  defp sign(x) when x > 0, do: 1
  defp sign(x) when x < 0, do: -1

end
