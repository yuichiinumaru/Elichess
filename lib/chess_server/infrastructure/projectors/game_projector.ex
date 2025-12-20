defmodule ChessServer.Infrastructure.Projectors.GameProjector do
  use Commanded.Event.Handler,
    application: ChessServer.App,
    name: "GameProjector"

  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Game.{Started, Progressed, Finished}
  alias ChessServer.Repo
  alias Phoenix.PubSub

  @doc """
  Handle Started event: Insert a new game row directly.
  """
  def handle(%Started{} = event, _metadata) do
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
  Handle Progressed event: Update existing game row directly.
  """
  def handle(%Progressed{} = event, _metadata) do
    # Fetch current state. If not found, it's a fatal error in projection consistency.
    game = Repo.get!(Game, event.game_id)

    # Update directly
    changes = [
      fen: event.fen,
      turn_color: Atom.to_string(event.turn_color),
      move_count: game.move_count + 1
    ]

    result = game
    |> Ecto.Changeset.change(changes)
    |> Repo.update!()

    broadcast_update(event.game_id, result)

    {:ok, result}
  end

  @doc """
  Handle Finished event.
  """
  def handle(%Finished{} = event, _metadata) do
    game = Repo.get!(Game, event.game_id)

    result = game
    |> Ecto.Changeset.change(status: Atom.to_string(event.reason), winner: event.winner)
    |> Repo.update!()

    broadcast_update(event.game_id, result)

    {:ok, result}
  end

  defp broadcast_update(game_id, game) do
    # Broadcast to "games:ID" topic
    PubSub.broadcast(ChessServer.PubSub, "games:#{game_id}", {:game_updated, game})
  end
end
