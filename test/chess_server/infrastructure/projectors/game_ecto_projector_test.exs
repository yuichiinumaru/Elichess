defmodule ChessServer.Infrastructure.Projectors.GameEctoProjectorTest do
  use ChessServer.DataCase
  alias ChessServer.Infrastructure.Projectors.GameEctoProjector
  alias ChessServer.Game.{Started, Progressed, Finished}
  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Repo

  test "projects Started event" do
    event = %Started{
      game_id: "gp-1",
      white_player: "w",
      black_player: "b",
      game_mode: :casual
    }

    # Helper from Commanded.Projections.Ecto? No, usually we test by handling event or integration.
    # But EctoProjector is just an event handler. We can verify side effects.
    # However, `project/3` returns a Multi. Commanded handles the execution.
    # To test unit logic, we might need to invoke handle manually, but it's generated.
    # Better to assume integration test or use Commanded test tools.

    # Let's try to just insert directly to DB to verify Multi logic if possible,
    # OR simpler: Use the handler directly if exposed.
    # Commanded Ecto Projections exposes `handle/2`.

    :ok = GameEctoProjector.handle(event, %{})

    assert Repo.get(Game, "gp-1")
  end

  test "projects Progressed event" do
    Repo.insert!(%Game{id: "gp-2", white_player: "w", black_player: "b", status: "active", move_count: 0})

    event = %Progressed{
      game_id: "gp-2",
      fen: "new-fen",
      turn_color: :black,
      from: "e2",
      to: "e4"
    }

    :ok = GameEctoProjector.handle(event, %{})

    game = Repo.get(Game, "gp-2")
    assert game.fen == "new-fen"
    assert game.move_count == 1
  end

  test "projects Finished event" do
    Repo.insert!(%Game{id: "gp-3", white_player: "w", black_player: "b", status: "active", move_count: 5})

    event = %Finished{
      game_id: "gp-3",
      reason: :checkmate_white_wins,
      winner: :white
    }

    :ok = GameEctoProjector.handle(event, %{})

    game = Repo.get(Game, "gp-3")
    assert game.status == "checkmate_white_wins"
    assert game.winner == "white"
  end
end
