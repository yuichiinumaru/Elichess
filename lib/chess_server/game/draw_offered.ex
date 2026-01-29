defmodule ChessServer.Game.DrawOffered do
  @derive Jason.Encoder
  defstruct [:game_id, :color]
end
