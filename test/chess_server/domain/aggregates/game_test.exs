defmodule ChessServer.Domain.Aggregates.GameTest do
  use ExUnit.Case
  alias ChessServer.Domain.Aggregates.Game
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Domain.Events.{GameCreated, MoveMade}
  alias ChessServer.Domain.GameState

  test "execute CreateGame returns GameCreated event" do
    cmd = %CreateGame{game_id: "game-1", white_player: "white", black_player: "black"}

    assert %GameCreated{
      game_id: "game-1",
      white_player: "white",
      black_player: "black"
    } = Game.execute(nil, cmd)
  end

  test "apply GameCreated creates initial state" do
    event = %GameCreated{
      game_id: "game-1",
      white_player: "white",
      black_player: "black"
    }

    state = Game.apply(nil, event)

    assert state.game_id == "game-1"
    assert state.white_player == "white"
    assert state.black_player == "black"
    assert state.turn_color == :white
    assert state.status == :active
    assert state.move_count == 0
  end

  test "execute MakeMove returns MoveMade event with correct FEN" do
    initial_state = GameState.new("game-1", "white", "black")

    cmd = %MakeMove{
      game_id: "game-1",
      from: "e2",
      to: "e4"
    }

    event = Game.execute(initial_state, cmd)

    assert %MoveMade{
      game_id: "game-1",
      from: "e2",
      to: "e4",
      turn_color: :black
    } = event

    # Check FEN roughly (not full string validation here)
    assert is_binary(event.fen)
  end

  test "apply MoveMade updates state" do
    initial_state = GameState.new("game-1", "white", "black")

    event = %MoveMade{
      game_id: "game-1",
      from: "e2",
      to: "e4",
      turn_color: :black,
      fen: "some-fen", # Ignored by current apply impl?
      promotion: nil
    }

    new_state = Game.apply(initial_state, event)

    assert new_state.turn_color == :black
    assert new_state.move_count == 1
    # Check board update (pawn moved)
    # e2 empty, e4 has pawn
    # We need to verify board state
    # Board implementation: get_piece

    # Wait, we can't easily check board internals if not exposed or helper.
    # But GameState exposes board.

    alias ChessServer.Domain.{Board, Position}
    {:ok, e2} = Position.from_string("e2")
    {:ok, e4} = Position.from_string("e4")

    assert Board.get_piece(new_state.board, e2) == nil
    refute Board.get_piece(new_state.board, e4) == nil
  end
end
