defmodule ChessServerWeb.Router do
  use ChessServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChessServerWeb do
    pipe_through :api

    post "/games", GameController, :create
    get "/games/:id", GameController, :show
    post "/games/:id/move", GameController, :move
  end
end
