defmodule ChessServer.Infrastructure.Projectors.GameProjector do
  use Commanded.Event.Handler,
    application: ChessServer.App,
    name: "GameProjector"

  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Domain.Events.{GameCreated, MoveMade}
  alias ChessServer.Repo

  @doc """
  Handle GameCreated event: Insert a new game row.
  """
  def handle(%GameCreated{} = event, _metadata) do
    %Game{}
    |> Game.changeset(%{
      id: event.game_id,
      white_player: event.white_player,
      black_player: event.black_player,
      status: "active",
      turn_color: "white",
      fen: "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1", # Initial FEN
      move_count: 0
    })
    |> Repo.insert()
  end

  @doc """
  Handle MoveMade event: Update existing game row.
  """
  def handle(%MoveMade{} = event, _metadata) do
    case Repo.get(Game, event.game_id) do
      nil -> {:error, :game_not_found}
      game ->
        game
        |> Game.changeset(%{
          fen: event.fen,
          turn_color: Atom.to_string(event.turn_color),
          move_count: game.move_count + 1
        })
        |> Repo.update()
    end
  end
end
