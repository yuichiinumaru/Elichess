defmodule ChessServer.Domain.Events.GameCreated do
  @derive Jason.Encoder
  defstruct [:game_id, :white_player, :black_player]
end
