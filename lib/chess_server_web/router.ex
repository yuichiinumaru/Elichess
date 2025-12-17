defmodule ChessServerWeb.Router do
  use ChessServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChessServerWeb do
    pipe_through :api
  end
end
