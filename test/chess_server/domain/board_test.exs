defmodule ChessServer.Domain.BoardTest do
  use ExUnit.Case
  alias ChessServer.Domain.{Board, Position, Piece}

  test "initial setup places pieces correctly" do
    board = Board.initial_setup()

    # Check White Rooks
    assert Board.get_piece(board, pos("a1")) == Piece.new(:white, :rook)
    assert Board.get_piece(board, pos("h1")) == Piece.new(:white, :rook)

    # Check Black King
    assert Board.get_piece(board, pos("e8")) == Piece.new(:black, :king)

    # Check Empty Square
    assert Board.get_piece(board, pos("e4")) == nil
  end

  test "move piece updates board" do
    board = Board.initial_setup()
    from = pos("e2")
    to = pos("e4")

    {:ok, new_board} = Board.move_piece(board, from, to)

    assert Board.get_piece(new_board, from) == nil
    assert Board.get_piece(new_board, to) == Piece.new(:white, :pawn)
  end

  defp pos(str) do
    {:ok, p} = Position.from_string(str)
    p
  end
end
