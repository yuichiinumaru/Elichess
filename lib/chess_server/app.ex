defmodule ChessServer.App do
  use Commanded.Application,
    otp_app: :chess_server,
    event_store: [
      adapter: Commanded.EventStore.Adapters.EventStore,
      event_store: ChessServer.EventStore
    ],
    pubsub: :local,
    registry: :local,
    router: ChessServer.Router
end
