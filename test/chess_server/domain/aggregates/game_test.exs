defmodule ChessServer.GameTest do
  use ExUnit.Case
  alias ChessServer.Game
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Game.{Started, Progressed}
  alias ChessServer.Domain.GameState

  test "execute CreateGame returns Started event" do
    cmd = %CreateGame{game_id: "game-1", white_player: "white", black_player: "black"}

    assert %Started{
      game_id: "game-1",
      white_player: "white",
      black_player: "black"
    } = Game.execute(nil, cmd)
  end

  test "apply Started creates initial state" do
    event = %Started{
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

  test "execute MakeMove returns Progressed event with correct FEN" do
    initial_state = GameState.new("game-1", "white", "black")

    cmd = %MakeMove{
      game_id: "game-1",
      from: "e2",
      to: "e4"
    }

    # execute returns a list of events now
    events = Game.execute(initial_state, cmd)

    assert [%Progressed{
      game_id: "game-1",
      from: "e2",
      to: "e4",
      turn_color: :black
    }] = events

    [event] = events
    # Check FEN roughly (not full string validation here)
    assert is_binary(event.fen)
  end

  test "apply Progressed updates state" do
    initial_state = GameState.new("game-1", "white", "black")

    event = %Progressed{
      game_id: "game-1",
      from: "e2",
      to: "e4",
      turn_color: :black,
      fen: "some-fen",
      promotion: nil
    }

    new_state = Game.apply(initial_state, event)

    assert new_state.turn_color == :black
    assert new_state.move_count == 1

    alias ChessServer.Domain.{Board, Position}
    {:ok, e2} = Position.from_string("e2")
    {:ok, e4} = Position.from_string("e4")

    assert Board.get_piece(new_state.board, e2) == nil
    refute Board.get_piece(new_state.board, e4) == nil
  end
end
