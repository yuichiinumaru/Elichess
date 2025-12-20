defmodule ChessServer.Domain.Events.GameFinished do
  @derive Jason.Encoder
  defstruct [:game_id, :reason, :winner]
end
