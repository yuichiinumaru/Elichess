defmodule ChessServer.Game.KingChecked do
  @derive Jason.Encoder
  defstruct [:game_id, :color]
end
