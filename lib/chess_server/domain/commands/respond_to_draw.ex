defmodule ChessServer.Domain.Commands.RespondToDraw do
  @derive Jason.Encoder
  defstruct [:game_id, :color, :response] # :accept or :decline
end
