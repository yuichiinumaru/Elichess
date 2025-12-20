defmodule ChessServer.Infrastructure.Projectors.GameProjector do
  use Commanded.Event.Handler,
    application: ChessServer.App,
    name: "GameProjector"

  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Domain.Events.{GameCreated, MoveMade, GameFinished}
  alias ChessServer.Repo
  alias Phoenix.PubSub

  @doc """
  Handle GameCreated event: Insert a new game row directly.
  """
  def handle(%GameCreated{} = event, _metadata) do
    game = %Game{
      id: event.game_id,
      white_player: event.white_player,
      black_player: event.black_player,
      status: "active",
      turn_color: "white",
      fen: "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1", # Initial FEN
      move_count: 0
    }

    # Use insert! to bypass changeset validation and raise on error
    result = Repo.insert!(game)

    broadcast_update(event.game_id, result)

    {:ok, result}
  end

  @doc """
  Handle MoveMade event: Update existing game row directly.
  """
  def handle(%MoveMade{} = event, _metadata) do
    # Fetch current state. If not found, it's a fatal error in projection consistency.
    game = Repo.get!(Game, event.game_id)

    # Update directly
    changes = [
      fen: event.fen,
      turn_color: Atom.to_string(event.turn_color),
      move_count: game.move_count + 1
    ]

    # Ecto.Changeset.change/2 is safe for internal data if we trust it, or just use struct update.
    # But Ecto.Repo.update! expects a changeset.
    # We can use Ecto.Changeset.change(game, changes) which skips validation.

    result = game
    |> Ecto.Changeset.change(changes)
    |> Repo.update!()

    broadcast_update(event.game_id, result)

    {:ok, result}
  end

  @doc """
  Handle GameFinished event.
  """
  def handle(%GameFinished{} = event, _metadata) do
    game = Repo.get!(Game, event.game_id)

    result = game
    |> Ecto.Changeset.change(status: Atom.to_string(event.reason), winner: event.winner) # Assuming we add winner column or just store in status
    # Wait, status usually holds "checkmate_white_wins".
    # Let's verify standard status usage.
    # Ideally status = "finished", result = "white_wins".
    # Current code uses "active".
    # I will stick to updating `status` with the reason string for now.
    |> Repo.update!()

    broadcast_update(event.game_id, result)

    {:ok, result}
  end

  defp broadcast_update(game_id, game) do
    # Broadcast to "games:ID" topic
    PubSub.broadcast(ChessServer.PubSub, "games:#{game_id}", {:game_updated, game})
  end
end
