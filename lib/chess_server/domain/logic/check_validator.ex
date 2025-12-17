defmodule ChessServer.Domain.Logic.CheckValidator do
  @moduledoc """
  Validates if a position is in check.
  """
  alias ChessServer.Domain.{Board, Piece, Position}

  def is_in_check?(board, color) do
    # Find king position
    king_pos = find_king(board, color)

    # Check if any opponent piece attacks the king
    opponent_color = if color == :white, do: :black, else: :white

    board.squares
    |> Enum.any?(fn {pos, piece} ->
      piece.color == opponent_color && attacks?(board, pos, king_pos, piece)
    end)
  end

  defp find_king(board, color) do
    {pos, _} = Enum.find(board.squares, fn {_, piece} ->
      piece.type == :king && piece.color == color
    end)
    pos
  end

  # Check if piece at `from` attacks `to` (simplified valid_move without general move restrictions like turn or self-check)
  defp attacks?(board, from, to, piece) do
    # We can reuse parts of MoveValidator logic, but MoveValidator is coupled to GameState now.
    # We should extract pure move rules or duplicate simple logic.
    # Duplicating simple logic is safer to avoid circular deps if MoveValidator uses CheckValidator.

    dx = to.file - from.file
    dy = to.rank - from.rank
    abs_dx = abs(dx)
    abs_dy = abs(dy)

    case piece.type do
      :pawn ->
        direction = if piece.color == :white, do: 1, else: -1
        abs_dx == 1 && dy == direction # Pawn captures diagonally

      :knight ->
        (abs_dx == 1 && abs_dy == 2) || (abs_dx == 2 && abs_dy == 1)

      :bishop ->
        abs_dx == abs_dy && path_clear?(board, from, to)

      :rook ->
        (dx == 0 || dy == 0) && path_clear?(board, from, to)

      :queen ->
        (abs_dx == abs_dy || dx == 0 || dy == 0) && path_clear?(board, from, to)

      :king ->
        abs_dx <= 1 && abs_dy <= 1
    end
  end

  defp path_clear?(board, from, to) do
    dx = sign(to.file - from.file)
    dy = sign(to.rank - from.rank)

    check_path(board, from, to, dx, dy)
  end

  defp check_path(board, current, target, dx, dy) do
    {:ok, next_pos} = Position.new(current.file + dx, current.rank + dy)

    if next_pos == target do
      true
    else
      if Board.get_piece(board, next_pos) != nil do
        false
      else
        check_path(board, next_pos, target, dx, dy)
      end
    end
  end

  defp sign(0), do: 0
  defp sign(x) when x > 0, do: 1
  defp sign(x) when x < 0, do: -1
end
