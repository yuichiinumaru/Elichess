defmodule ChessServer.Domain.Commands.OfferDraw do
  @derive Jason.Encoder
  defstruct [:game_id, :color]
end
