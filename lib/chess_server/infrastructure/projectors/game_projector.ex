defmodule ChessServer.Infrastructure.Projectors.GameProjector do
  use Commanded.Projections.Ecto,
    application: ChessServer.App,
    repo: ChessServer.Repo,
    name: "GameProjector"

  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Game.{Started, Progressed, Finished}
  alias Phoenix.PubSub

  project %Started{} = event, _metadata, fn multi ->
    game = %Game{
      id: event.game_id,
      white_player: event.white_player,
      black_player: event.black_player,
      status: "active",
      turn_color: "white",
      fen: "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1",
      move_count: 0,
      time_control: event.time_control
    }

    Ecto.Multi.insert(multi, :game, game, on_conflict: :replace_all, conflict_target: :id)
  end

  project %Progressed{} = event, _metadata, fn multi ->
    multi
    |> Ecto.Multi.run(:fetch_game, fn repo, _changes ->
      case repo.get(Game, event.game_id) do
        nil -> {:error, :not_found}
        game -> {:ok, game}
      end
    end)
    |> Ecto.Multi.update(:update_game, fn %{fetch_game: game} ->
      Ecto.Changeset.change(game,
        fen: event.fen,
        turn_color: Atom.to_string(event.turn_color),
        move_count: game.move_count + 1
      )
    end)
  end

  project %Finished{} = event, _metadata, fn multi ->
    multi
    |> Ecto.Multi.run(:fetch_game, fn repo, _changes ->
      case repo.get(Game, event.game_id) do
        nil -> {:error, :not_found}
        game -> {:ok, game}
      end
    end)
    |> Ecto.Multi.update(:update_game, fn %{fetch_game: game} ->
      Ecto.Changeset.change(game,
        status: Atom.to_string(event.reason),
        winner: event.winner
      )
    end)
  end

  @impl Commanded.Projections.Ecto
  def after_update(_event, _metadata, changes) do
    # Extract game from Multi result. Keys depend on the project block logic.
    game = changes[:game] || changes[:update_game]

    if game do
      PubSub.broadcast(ChessServer.PubSub, "games:#{game.id}", {:game_updated, game})
    end
    :ok
  end
end
