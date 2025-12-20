defmodule ChessServer.Infrastructure.Projectors.GameProjectorTest do
  use ChessServer.DataCase
  alias ChessServer.Infrastructure.Projectors.GameProjector
  alias ChessServer.Domain.Events.{GameCreated, MoveMade, GameFinished}
  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Repo

  test "handle GameCreated inserts game" do
    event = %GameCreated{
      game_id: "game-proj-1",
      white_player: "white",
      black_player: "black"
    }

    {:ok, %Game{} = game} = GameProjector.handle(event, %{})

    assert game.id == "game-proj-1"
    assert game.status == "active"
    assert Repo.get(Game, "game-proj-1")
  end

  test "handle MoveMade updates game" do
    # Insert initial
    Repo.insert!(%Game{
      id: "game-proj-2",
      white_player: "w",
      black_player: "b",
      status: "active",
      turn_color: "white",
      move_count: 0
    })

    event = %MoveMade{
      game_id: "game-proj-2",
      from: "e2",
      to: "e4",
      fen: "new-fen",
      turn_color: :black,
      promotion: nil
    }

    {:ok, %Game{} = game} = GameProjector.handle(event, %{})

    assert game.move_count == 1
    assert game.turn_color == "black"
    assert game.fen == "new-fen"
  end

  test "handle GameFinished updates status" do
    Repo.insert!(%Game{
      id: "game-proj-3",
      white_player: "w",
      black_player: "b",
      status: "active",
      move_count: 10
    })

    event = %GameFinished{
      game_id: "game-proj-3",
      reason: :checkmate_white_wins,
      winner: :white
    }

    {:ok, %Game{} = game} = GameProjector.handle(event, %{})

    assert game.status == "checkmate_white_wins"
    # assert game.winner == "white" # If we added winner column
  end
end
