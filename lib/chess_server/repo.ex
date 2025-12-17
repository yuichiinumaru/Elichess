defmodule ChessServer.Repo do
  use Ecto.Repo,
    otp_app: :chess_server,
    adapter: Ecto.Adapters.Postgres
end
