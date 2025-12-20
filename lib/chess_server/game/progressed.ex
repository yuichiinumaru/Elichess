defmodule ChessServer.Game.Progressed do
  @derive Jason.Encoder
  defstruct [:game_id, :from, :to, :fen, :turn_color, :promotion]
end
