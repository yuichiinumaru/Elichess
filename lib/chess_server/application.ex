defmodule ChessServer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ChessServerWeb.Telemetry,
      # Start the Ecto repository
      ChessServer.Repo,
      # Start the Event Store
      ChessServer.EventStore,
      # Start the Commanded Application
      ChessServer.App,
      # Start Projectors
      ChessServer.Infrastructure.Projectors.GameProjector,
      # Start the PubSub system
      {Phoenix.PubSub, name: ChessServer.PubSub},
      # Start the Endpoint (http/https)
      ChessServerWeb.Endpoint
      # Start a worker by calling: ChessServer.Worker.start_link(arg)
      # {ChessServer.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChessServer.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ChessServerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
