defmodule ChessServer.Domain.Piece do
  @moduledoc """
  Represents a chess piece.
  """

  @type color :: :white | :black
  @type type :: :pawn | :knight | :bishop | :rook | :queen | :king

  @type t :: %__MODULE__{
    color: color(),
    type: type()
  }

  defstruct [:color, :type]

  def new(color, type) when color in [:white, :black] and type in [:pawn, :knight, :bishop, :rook, :queen, :king] do
    %__MODULE__{color: color, type: type}
  end

  def to_fen_char(%__MODULE__{color: :white, type: :pawn}), do: "P"
  def to_fen_char(%__MODULE__{color: :white, type: :knight}), do: "N"
  def to_fen_char(%__MODULE__{color: :white, type: :bishop}), do: "B"
  def to_fen_char(%__MODULE__{color: :white, type: :rook}), do: "R"
  def to_fen_char(%__MODULE__{color: :white, type: :queen}), do: "Q"
  def to_fen_char(%__MODULE__{color: :white, type: :king}), do: "K"
  def to_fen_char(%__MODULE__{color: :black, type: :pawn}), do: "p"
  def to_fen_char(%__MODULE__{color: :black, type: :knight}), do: "n"
  def to_fen_char(%__MODULE__{color: :black, type: :bishop}), do: "b"
  def to_fen_char(%__MODULE__{color: :black, type: :rook}), do: "r"
  def to_fen_char(%__MODULE__{color: :black, type: :queen}), do: "q"
  def to_fen_char(%__MODULE__{color: :black, type: :king}), do: "k"

  def from_fen_char(char) do
    case char do
      "P" -> new(:white, :pawn)
      "N" -> new(:white, :knight)
      "B" -> new(:white, :bishop)
      "R" -> new(:white, :rook)
      "Q" -> new(:white, :queen)
      "K" -> new(:white, :king)
      "p" -> new(:black, :pawn)
      "n" -> new(:black, :knight)
      "b" -> new(:black, :bishop)
      "r" -> new(:black, :rook)
      "q" -> new(:black, :queen)
      "k" -> new(:black, :king)
      _ -> {:error, :invalid_piece}
    end
  end
end
