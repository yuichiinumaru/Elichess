defmodule ChessServer.Domain.Color do
  @moduledoc """
  Strongly typed color representation.
  """

  @type t :: :white | :black

  defguard is_color(color) when color in [:white, :black]

  def white, do: :white
  def black, do: :black

  def opposite(:white), do: :black
  def opposite(:black), do: :white
  def opposite(_), do: nil

  @doc """
  Validates if the given term is a valid color.
  """
  def validate(color) when is_color(color), do: {:ok, color}
  def validate(color) when is_binary(color) do
    try do
      atom = String.to_existing_atom(color)
      if is_color(atom), do: {:ok, atom}, else: {:error, :invalid_color}
    rescue
      ArgumentError -> {:error, :invalid_color}
    end
  end
  def validate(_), do: {:error, :invalid_color}
end
