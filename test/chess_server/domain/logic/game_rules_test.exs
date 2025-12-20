defmodule ChessServer.Domain.Logic.GameRulesTest do
  use ExUnit.Case
  alias ChessServer.Domain.{Board, GameState, Piece, Position}
  alias ChessServer.Domain.Logic.GameRules

  setup do
    state = GameState.new("game-1", "white", "black")
    # Clear board
    {:ok, state: %{state | board: Board.new()}}
  end

  defp place(state, pos_str, color, type) do
    {:ok, pos} = Position.from_string(pos_str)
    board = Board.place_piece(state.board, pos, Piece.new(color, type))
    %{state | board: board}
  end

  test "detects checkmate", %{state: state} do
    # White King on a1
    state = place(state, "a1", :white, :king)
    # White pawns on a2, b2
    state = place(state, "a2", :white, :pawn)
    state = place(state, "b2", :white, :pawn)

    # Black Rook on d1 (attacking rank 1)
    state = place(state, "d1", :black, :rook)

    assert ChessServer.Domain.Logic.CheckValidator.is_in_check?(state.board, :white)
    assert GameRules.check_status(state) == :checkmate_black_wins
  end

  test "detects stalemate", %{state: state} do
    # Simple stalemate:
    # White King a1.
    # Black Queen c2 (blocks a2, b2, b1).
    # King a1 is safe?
    # c2 (2,1). a1 (0,0). dx=2, dy=1. No check.

    state = GameState.new("game-2", "white", "black")
    # Clear board
    state = %{state | board: Board.new()}

    state = place(state, "a1", :white, :king)
    state = place(state, "c2", :black, :queen)

    assert not ChessServer.Domain.Logic.CheckValidator.is_in_check?(state.board, :white)

    assert GameRules.check_status(state) == :stalemate
  end

  test "active if moves available", %{state: state} do
    state = place(state, "e1", :white, :king)
    assert GameRules.check_status(state) == :active
  end
end
