defmodule ChessServer.Game.PawnPromoted do
  @derive Jason.Encoder
  defstruct [:game_id, :square, :promotion_type]
end
