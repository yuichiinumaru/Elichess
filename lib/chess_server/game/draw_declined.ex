defmodule ChessServer.Game.DrawDeclined do
  @derive Jason.Encoder
  defstruct [:game_id, :color] # Who declined
end
