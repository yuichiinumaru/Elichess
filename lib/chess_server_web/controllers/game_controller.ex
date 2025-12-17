defmodule ChessServerWeb.GameController do
  use ChessServerWeb, :controller

  alias ChessServer.App
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Infrastructure.Projections.Game
  alias ChessServer.Repo

  action_fallback ChessServerWeb.FallbackController

  def create(conn, %{"white_player" => white, "black_player" => black}) do
    game_id = Ecto.UUID.generate()
    command = %CreateGame{
      game_id: game_id,
      white_player: white,
      black_player: black
    }

    with :ok <- App.dispatch(command) do
      # In a real async system, the projection might not be ready immediately.
      # Ideally we wait or return just the ID.
      # For now, we return the created structure assuming eventual consistency handles it fast enough
      # or we construct the response manually.

      conn
      |> put_status(:created)
      |> render(:show, game: %{
           id: game_id,
           white_player: white,
           black_player: black,
           status: "active"
         })
    end
  end

  def show(conn, %{"id" => id}) do
    case Repo.get(Game, id) do
      nil -> {:error, :not_found}
      game -> render(conn, :show, game: game)
    end
  end

  def move(conn, %{"id" => id, "from" => from, "to" => to} = params) do
    promotion = params["promotion"] # optional

    command = %MakeMove{
      game_id: id,
      from: from,
      to: to,
      promotion: promotion
    }

    with :ok <- App.dispatch(command) do
      # Fetch updated game state
      # Note: This might be stale if projection is slow.
      # Retrying or long-polling is an option, but for now we query directly.

      # For the response, we might just return "accepted" or the command result.
      # But the user expects the new board.
      # Let's try to fetch it.

      updated_game = Repo.get(Game, id)
      render(conn, :show, game: updated_game)
    end
  end
end
