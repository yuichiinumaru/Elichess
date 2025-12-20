defmodule ChessServer.Game.PieceCaptured do
  @derive Jason.Encoder
  defstruct [:game_id, :piece_type, :piece_color, :square]
end

defmodule ChessServer.Game.KingChecked do
  @derive Jason.Encoder
  defstruct [:game_id, :color]
end

defmodule ChessServer.Game.PawnPromoted do
  @derive Jason.Encoder
  defstruct [:game_id, :square, :promotion_type]
end
