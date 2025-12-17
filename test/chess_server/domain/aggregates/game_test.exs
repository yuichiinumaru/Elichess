defmodule ChessServer.Domain.Aggregates.GameTest do
  use ExUnit.Case

  alias ChessServer.Domain.Aggregates.Game
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Domain.Events.{GameCreated, MoveMade}
  alias ChessServer.Domain.GameState

  # Since we can't run the full Commanded app easily in this environment without proper DB setup for tests,
  # we will unit test the Aggregate's execute/2 and apply/2 functions directly.

  test "execute CreateGame returns GameCreated event" do
    # Initial state is nil
    state = nil
    cmd = %CreateGame{game_id: "game1", white_player: "Alice", black_player: "Bob"}

    assert %GameCreated{game_id: "game1", white_player: "Alice", black_player: "Bob"} =
           Game.execute(state, cmd)
  end

  test "apply GameCreated creates initial state" do
    state = nil
    event = %GameCreated{game_id: "game1", white_player: "Alice", black_player: "Bob"}

    new_state = Game.apply(state, event)

    assert %GameState{} = new_state
    assert new_state.game_id == "game1"
    assert new_state.status == :active
    assert new_state.turn_color == :white
    # Verify board setup (e.g. check for rooks)
    # Just checking FEN implies board is setup
    # But new_state.board is a struct, not FEN.
  end

  test "execute MakeMove returns MoveMade event with correct FEN" do
    # Setup initial state (Game Created)
    initial_state = Game.apply(nil, %GameCreated{game_id: "g1"})

    cmd = %MakeMove{game_id: "g1", from: "e2", to: "e4"}

    event = Game.execute(initial_state, cmd)
    assert %MoveMade{} = event
    assert event.game_id == "g1"
    assert event.from == "e2"
    assert event.to == "e4"
    assert event.turn_color == :black

    # Verify FEN (Initial position after e2e4)
    # rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR
    assert event.fen == "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR"
  end
end
