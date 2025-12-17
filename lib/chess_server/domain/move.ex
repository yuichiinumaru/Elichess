defmodule ChessServer.Domain.Move do
  @moduledoc """
  Represents a move request.
  """
  alias ChessServer.Domain.Position

  @type t :: %__MODULE__{
    from: Position.t(),
    to: Position.t(),
    promotion: Piece.type() | nil
  }

  defstruct [:from, :to, :promotion]

  def new(from_str, to_str, promotion \\ nil) do
    with {:ok, from} <- Position.from_string(from_str),
         {:ok, to} <- Position.from_string(to_str) do
      {:ok, %__MODULE__{from: from, to: to, promotion: promotion}}
    end
  end
end
