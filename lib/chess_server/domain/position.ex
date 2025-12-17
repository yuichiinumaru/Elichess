defmodule ChessServer.Domain.Position do
  @moduledoc """
  Represents a position on the board (file and rank).
  """

  @type t :: %__MODULE__{
    file: 0..7,
    rank: 0..7
  }

  defstruct [:file, :rank]

  def new(file, rank) when file in 0..7 and rank in 0..7 do
    {:ok, %__MODULE__{file: file, rank: rank}}
  end

  def new(_, _), do: {:error, :invalid_position}

  def from_string(<<file::utf8, rank::utf8>>) do
    file_idx = file - ?a
    rank_idx = rank - ?1

    new(file_idx, rank_idx)
  end

  def from_string(_), do: {:error, :invalid_format}

  def to_string(%__MODULE__{file: file, rank: rank}) do
    List.to_string([file + ?a, rank + ?1])
  end

  def color(%__MODULE__{file: file, rank: rank}) do
    if rem(file + rank, 2) == 0, do: :black, else: :white
  end
end
