import Config

# Configure your database
config :chess_server, ChessServer.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "chess_server_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :chess_server, ChessServer.EventStore,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "chess_server_eventstore_dev",
  pool_size: 10

config :chess_server, ChessServerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "SECRET_KEY_BASE_DEV"

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime
