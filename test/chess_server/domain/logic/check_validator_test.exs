defmodule ChessServer.Domain.Logic.CheckValidatorTest do
  use ExUnit.Case
  alias ChessServer.Domain.{Board, Piece, Position}
  alias ChessServer.Domain.Logic.CheckValidator

  setup do
    {:ok, board: Board.new()}
  end

  defp place(board, pos_str, color, type) do
    {:ok, pos} = Position.from_string(pos_str)
    Board.place_piece(board, pos, Piece.new(color, type))
  end

  test "detects check by rook" do
    board = Board.new()
    board = place(board, "e1", :white, :king)
    board = place(board, "e8", :black, :rook) # Same file, open path

    assert CheckValidator.is_in_check?(board, :white)

    # Block path
    board = place(board, "e4", :white, :pawn)
    assert not CheckValidator.is_in_check?(board, :white)
  end

  test "detects check by knight" do
    board = Board.new()
    board = place(board, "e4", :white, :king)
    board = place(board, "d6", :black, :knight) # L shape

    assert CheckValidator.is_in_check?(board, :white)
  end

  test "detects check by pawn" do
    board = Board.new()
    board = place(board, "e4", :white, :king)
    board = place(board, "d5", :black, :pawn) # Attacks e4

    assert CheckValidator.is_in_check?(board, :white)
  end
end
