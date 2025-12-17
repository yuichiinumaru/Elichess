defmodule ChessServer.Domain.MoveValidator do
  @moduledoc """
  Validates moves based on chess rules.
  """
  alias ChessServer.Domain.{Board, Move, Piece, Position}

  def valid_move?(%Board{} = board, %Move{} = move, turn_color) do
    # 1. Check if piece exists at 'from'
    piece = Board.get_piece(board, move.from)

    cond do
      is_nil(piece) -> {:error, :no_piece}
      piece.color != turn_color -> {:error, :wrong_turn}
      move.from == move.to -> {:error, :same_square}
      true -> check_piece_rules(board, move, piece)
    end
  end

  defp check_piece_rules(board, move, %Piece{type: :pawn} = piece), do: validate_pawn(board, move, piece)
  defp check_piece_rules(board, move, %Piece{type: :knight} = piece), do: validate_knight(board, move, piece)
  defp check_piece_rules(board, move, %Piece{type: :bishop} = piece), do: validate_bishop(board, move, piece)
  defp check_piece_rules(board, move, %Piece{type: :rook} = piece), do: validate_rook(board, move, piece)
  defp check_piece_rules(board, move, %Piece{type: :queen} = piece), do: validate_queen(board, move, piece)
  defp check_piece_rules(board, move, %Piece{type: :king} = piece), do: validate_king(board, move, piece)

  # --- Simplified Validation Logic for Phase 1 ---

  defp validate_pawn(board, move, piece) do
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

  defp validate_king(board, move, piece) do
    dx = abs(move.to.file - move.from.file)
    dy = abs(move.to.rank - move.from.rank)

    if dx <= 1 && dy <= 1 do
      target = Board.get_piece(board, move.to)
      if target == nil || target.color != piece.color, do: :ok, else: {:error, :friendly_fire}
    else
      {:error, :invalid_king_move}
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
