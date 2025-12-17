import Config

# Configure your database
config :chess_server, ChessServer.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "chess_server_test",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

config :chess_server, ChessServer.EventStore,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "chess_server_eventstore_test",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

config :chess_server, ChessServerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "SECRET_KEY_BASE_TEST",
  server: false

config :logger, level: :warning

config :phoenix, :plug_init_mode, :runtime
