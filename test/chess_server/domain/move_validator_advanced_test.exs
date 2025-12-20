defmodule ChessServer.Domain.MoveValidatorAdvancedTest do
  use ExUnit.Case
  alias ChessServer.Domain.{Board, Move, MoveValidator, Piece, Position, GameState}

  setup do
    # Create a clean state
    state = GameState.new("game-1", "white", "black")
    # Clear board for easier testing
    board = Board.new()
    state = %{state | board: board}
    {:ok, state: state, board: board}
  end

  defp place(state, pos_str, color, type) do
    {:ok, pos} = Position.from_string(pos_str)
    board = Board.place_piece(state.board, pos, Piece.new(color, type))
    %{state | board: board}
  end

  defp make_move_struct(from_str, to_str) do
    {:ok, from} = Position.from_string(from_str)
    {:ok, to} = Position.from_string(to_str)
    Move.new(from, to)
  end

  test "en passant capture validity", %{state: state} do
    # White pawn on e5
    state = place(state, "e5", :white, :pawn)
    state = place(state, "d5", :black, :pawn)

    # Needs a king on board for check validation
    state = place(state, "e1", :white, :king)
    state = place(state, "e8", :black, :king)

    # Set en_passant_target to d6 (behind the black pawn).
    {:ok, ep_target} = Position.from_string("d6")
    state = %{state | en_passant_target: ep_target}

    # Try capturing e5 -> d6
    move = make_move_struct("e5", "d6")
    assert MoveValidator.valid_move?(state, move) == :ok
  end

  test "castling kingside validity", %{state: state} do
    # White King on e1, Rook on h1. Path clear.
    state = place(state, "e1", :white, :king)
    state = place(state, "h1", :white, :rook)

    move = make_move_struct("e1", "g1")
    assert MoveValidator.valid_move?(state, move) == :ok

    # Block path
    state = place(state, "f1", :white, :bishop)
    assert {:error, _} = MoveValidator.valid_move?(state, move)
  end

  test "castling queenside validity", %{state: state} do
    # White King on e1, Rook on a1. Path clear.
    state = place(state, "e1", :white, :king)
    state = place(state, "a1", :white, :rook)

    move = make_move_struct("e1", "c1")
    assert MoveValidator.valid_move?(state, move) == :ok

     # Block path
    state = place(state, "d1", :white, :queen)
    assert {:error, _} = MoveValidator.valid_move?(state, move)
  end

  test "prevents moving king into check", %{state: state} do
    state = place(state, "e1", :white, :king)
    state = place(state, "e3", :black, :rook) # Attacks e column

    # e1 -> e2 (blocked by rook attack)
    move = make_move_struct("e1", "e2")
    assert {:error, :king_in_check} = MoveValidator.valid_move?(state, move)

    # e1 -> f1 (safe)
    move = make_move_struct("e1", "f1")
    assert MoveValidator.valid_move?(state, move) == :ok
  end
end
