defmodule ChessServer.Domain.Board do
  @moduledoc """
  Represents the chess board.
  """
  alias ChessServer.Domain.{Piece, Position}

  @type t :: %__MODULE__{
    squares: %{Position.t() => Piece.t()}
  }

  defstruct squares: %{}

  def new do
    %__MODULE__{squares: %{}}
  end

  def place_piece(%__MODULE__{} = board, %Position{} = pos, %Piece{} = piece) do
    %{board | squares: Map.put(board.squares, pos, piece)}
  end

  def get_piece(%__MODULE__{} = board, %Position{} = pos) do
    Map.get(board.squares, pos)
  end

  def remove_piece(%__MODULE__{} = board, %Position{} = pos) do
    %{board | squares: Map.delete(board.squares, pos)}
  end

  def move_piece(%__MODULE__{} = board, %Position{} = from, %Position{} = to) do
    case get_piece(board, from) do
      nil -> {:error, :no_piece_at_source}
      piece ->
        board
        |> remove_piece(from)
        |> place_piece(to, piece)
        |> then(&{:ok, &1})
    end
  end

  def initial_setup do
    board = new()
    # White pieces
    |> place_rank(:white, 0)
    |> place_pawns(:white, 1)
    # Black pieces
    |> place_pawns(:black, 6)
    |> place_rank(:black, 7)

    board
  end

  defp place_pawns(board, color, rank) do
    Enum.reduce(0..7, board, fn file, acc ->
      {:ok, pos} = Position.new(file, rank)
      place_piece(acc, pos, Piece.new(color, :pawn))
    end)
  end

  defp place_rank(board, color, rank) do
    types = [:rook, :knight, :bishop, :queen, :king, :bishop, :knight, :rook]
    Enum.with_index(types)
    |> Enum.reduce(board, fn {type, file}, acc ->
      {:ok, pos} = Position.new(file, rank)
      place_piece(acc, pos, Piece.new(color, type))
    end)
  end

  def to_fen(%__MODULE__{} = board) do
    # Generate FEN piece placement
    # Rank 7 (top) down to 0 (bottom)
    ranks = for rank <- 7..0 do
      rank_to_fen(board, rank)
    end

    Enum.join(ranks, "/")
  end

  defp rank_to_fen(board, rank) do
    {fen, empty_count} =
      Enum.reduce(0..7, {"", 0}, fn file, {acc_str, empty} ->
        {:ok, pos} = Position.new(file, rank)
        piece = get_piece(board, pos)

        if piece do
          str = if empty > 0, do: acc_str <> Integer.to_string(empty), else: acc_str
          {str <> Piece.to_fen_char(piece), 0}
        else
          {acc_str, empty + 1}
        end
      end)

    if empty_count > 0, do: fen <> Integer.to_string(empty_count), else: fen
  end
end
