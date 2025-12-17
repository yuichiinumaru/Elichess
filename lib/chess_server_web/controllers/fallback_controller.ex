defmodule ChessServerWeb.FallbackController do
  use ChessServerWeb, :controller

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(html: ChessServerWeb.ErrorHTML, json: ChessServerWeb.ErrorJSON)
    |> render(:"404")
  end

  def call(conn, {:error, :game_not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(html: ChessServerWeb.ErrorHTML, json: ChessServerWeb.ErrorJSON)
    |> render(:"404")
  end

  def call(conn, {:error, _reason}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(html: ChessServerWeb.ErrorHTML, json: ChessServerWeb.ErrorJSON)
    |> render(:"422")
  end
end
