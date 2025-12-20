defmodule ChessServer.Game.Started do
  @derive Jason.Encoder
  defstruct [:game_id, :white_player, :black_player]
end
