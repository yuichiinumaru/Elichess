defmodule ChessServer.Domain.Events.MoveMade do
  @derive Jason.Encoder
  defstruct [:game_id, :from, :to, :fen, :turn_color]
end
