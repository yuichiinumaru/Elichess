import Config

config :chess_server,
  ecto_repos: [ChessServer.Repo],
  event_stores: [ChessServer.EventStore]

config :chess_server, ChessServer.EventStore,
  serializer: Commanded.Serialization.JsonSerializer

config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore

# Configures the endpoint
config :chess_server, ChessServerWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: ChessServerWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ChessServer.PubSub,
  live_view: [signing_salt: "SECRET_SALT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
