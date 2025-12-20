defmodule ChessServer.Domain.Color do
  @moduledoc """
  Strongly typed color representation.
  """

  @type t :: :white | :black

  def white, do: :white
  def black, do: :black

  def opposite(:white), do: :black
  def opposite(:black), do: :white
  def opposite(_), do: nil
end
