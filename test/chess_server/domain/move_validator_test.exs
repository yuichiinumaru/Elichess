defmodule ChessServer.Domain.MoveValidatorTest do
  use ExUnit.Case
  alias ChessServer.Domain.{Board, Move, MoveValidator, Position}

  setup do
    {:ok, board: Board.initial_setup()}
  end

  test "pawn can move forward 1 square", %{board: board} do
    move = move("e2", "e3")
    assert MoveValidator.valid_move?(board, move, :white) == :ok
  end

  test "pawn can move forward 2 squares from start", %{board: board} do
    move = move("e2", "e4")
    assert MoveValidator.valid_move?(board, move, :white) == :ok
  end

  test "pawn cannot move backward", %{board: board} do
    # Create board with pawn at e4
    {:ok, board} = Board.move_piece(board, pos("e2"), pos("e4"))

    move = move("e4", "e3")
    assert {:error, _} = MoveValidator.valid_move?(board, move, :white)
  end

  test "knight can jump over pieces", %{board: board} do
    move = move("g1", "f3")
    assert MoveValidator.valid_move?(board, move, :white) == :ok
  end

  defp move(from, to) do
    {:ok, m} = Move.new(from, to)
    m
  end

  defp pos(str) do
    {:ok, p} = Position.from_string(str)
    p
  end
end
