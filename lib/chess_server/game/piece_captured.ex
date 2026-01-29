defmodule ChessServer.Game.PieceCaptured do
  @derive Jason.Encoder
  defstruct [:game_id, :piece_type, :piece_color, :square]
end
