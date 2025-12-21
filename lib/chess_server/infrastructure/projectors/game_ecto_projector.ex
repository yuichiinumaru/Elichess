defmodule ChessServer.Infrastructure.Projectors.GameEctoProjector do
  use Commanded.Projections.Ecto,
    application: ChessServer.App,
    repo: ChessServer.Repo,
    name: "GameEctoProjector"

  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Game.{Started, Progressed, Finished}
  alias Phoenix.PubSub
  import Ecto.Query

  project(%Started{} = event, _metadata, fn multi ->
    game = %Game{
      id: event.game_id,
      white_player: event.white_player,
      black_player: event.black_player,
      status: "active",
      turn_color: "white",
      fen: "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1",
      move_count: 0,
      game_mode: Atom.to_string(event.game_mode || :casual)
    }

    Ecto.Multi.insert(multi, :game, game)
  end)

  project(%Progressed{} = event, _metadata, fn multi ->
    game_id = event.game_id
    fen = event.fen
    turn_color = Atom.to_string(event.turn_color)

    query = from(g in Game, where: g.id == ^game_id)

    Ecto.Multi.update_all(multi, :game, query,
      set: [
        fen: fen,
        turn_color: turn_color
      ],
      inc: [move_count: 1]
    )
  end)

  project(%Finished{} = event, _metadata, fn multi ->
    game_id = event.game_id
    status = Atom.to_string(event.reason)
    winner_str = if event.winner, do: Atom.to_string(event.winner), else: nil

    query = from(g in Game, where: g.id == ^game_id)

    Ecto.Multi.update_all(multi, :game, query,
      set: [
        status: status,
        winner: winner_str
      ]
    )
  end)

  @impl Commanded.Projections.Ecto
  def after_update(event, _metadata, _changes) do
    game_id = case event do
      %Started{game_id: id} -> id
      %Progressed{game_id: id} -> id
      %Finished{game_id: id} -> id
      _ -> nil
    end

    if game_id do
      # Fetch latest state to broadcast
      # Or just broadcast a notification signal.
      # Previous implementation broadcasted the full game struct.
      game = ChessServer.Repo.get(Game, game_id)
      PubSub.broadcast(ChessServer.PubSub, "games:#{game_id}", {:game_updated, game})
    end
    :ok
  end
end
