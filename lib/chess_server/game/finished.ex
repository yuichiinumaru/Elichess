defmodule ChessServer.Game.Finished do
  @derive Jason.Encoder
  defstruct [:game_id, :reason, :winner]
end
