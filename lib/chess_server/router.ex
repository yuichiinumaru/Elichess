defmodule ChessServer.Router do
  use Commanded.Commands.Router

  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Domain.Aggregates.Game

  dispatch [CreateGame, MakeMove], to: Game, identity: :game_id
end
