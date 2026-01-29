defmodule ChessServer.Router do
  use Commanded.Commands.Router

  alias ChessServer.Domain.Commands.{CreateGame, MakeMove, OfferDraw, RespondToDraw}
  alias ChessServer.Game

  dispatch [CreateGame, MakeMove, OfferDraw, RespondToDraw], to: Game, identity: :game_id
end
