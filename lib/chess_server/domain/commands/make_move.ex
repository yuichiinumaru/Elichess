defmodule ChessServer.Domain.Commands.MakeMove do
  @derive Jason.Encoder
  defstruct [:game_id, :from, :to, :promotion]
end
