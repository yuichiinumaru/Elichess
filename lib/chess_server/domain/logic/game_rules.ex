defmodule ChessServer.Domain.Logic.GameRules do
  @moduledoc """
  High-level game rules like checkmate and stalemate detection.
  """
  alias ChessServer.Domain.{Board, GameState, Move, Piece, Position, MoveValidator}
  alias ChessServer.Domain.Logic.CheckValidator

  def check_status(%GameState{} = state) do
    # Check if current player has any valid moves
    if has_any_legal_move?(state) do
      # If they have moves, game continues.
      :active
    else
      # No legal moves.
      if CheckValidator.is_in_check?(state.board, state.turn_color) do
        if state.turn_color == :white, do: :checkmate_black_wins, else: :checkmate_white_wins
      else
        :stalemate
      end
    end
  end

  def has_any_legal_move?(state) do
    state.board.squares
    |> Enum.filter(fn {_, piece} -> piece.color == state.turn_color end)
    |> Enum.any?(fn {pos, piece} ->
      can_move_somewhere?(state, pos, piece)
    end)
  end

  defp can_move_somewhere?(state, from, piece) do
    # Optimization: Stop at first valid move
    targets = generate_potential_targets(state.board, from, piece)

    Enum.any?(targets, fn to ->
      move = Move.new(from, to)
      case MoveValidator.valid_move?(state, move) do
        :ok -> true
        _ -> false
      end
    end)
  end

  defp generate_potential_targets(board, from, piece) do
    case piece.type do
      :pawn -> generate_pawn_targets(board, from, piece)
      :knight -> generate_jumps(from, [{1,2}, {1,-2}, {-1,2}, {-1,-2}, {2,1}, {2,-1}, {-2,1}, {-2,-1}])
      :king ->
        moves = generate_jumps(from, [{0,1}, {0,-1}, {1,0}, {-1,0}, {1,1}, {1,-1}, {-1,1}, {-1,-1}])
        castling = if from.file == 4, do: [pos(2, from.rank), pos(6, from.rank)], else: []
        moves ++ (castling |> Enum.filter(& &1))
      :bishop -> generate_slides(board, from, [{1,1}, {1,-1}, {-1,1}, {-1,-1}])
      :rook -> generate_slides(board, from, [{0,1}, {0,-1}, {1,0}, {-1,0}])
      :queen -> generate_slides(board, from, [{0,1}, {0,-1}, {1,0}, {-1,0}, {1,1}, {1,-1}, {-1,1}, {-1,-1}])
    end
  end

  defp generate_pawn_targets(_board, from, piece) do
    direction = if piece.color == :white, do: 1, else: -1

    # Forward 1
    f1 = pos(from.file, from.rank + direction)
    # Forward 2
    f2 = if (piece.color == :white && from.rank == 1) || (piece.color == :black && from.rank == 6),
         do: pos(from.file, from.rank + 2 * direction), else: nil

    # Captures
    c1 = pos(from.file - 1, from.rank + direction)
    c2 = pos(from.file + 1, from.rank + direction)

    [f1, f2, c1, c2] |> Enum.filter(& &1)
  end

  defp generate_jumps(from, deltas) do
    Enum.map(deltas, fn {dx, dy} -> pos(from.file + dx, from.rank + dy) end)
    |> Enum.filter(& &1)
  end

  defp generate_slides(board, from, dirs) do
    Enum.flat_map(dirs, fn {dx, dy} ->
      slide(board, from, dx, dy)
    end)
  end

  defp slide(board, current, dx, dy) do
    case pos(current.file + dx, current.rank + dy) do
      nil -> []
      next_pos ->
        if Board.get_piece(board, next_pos) do
          [next_pos] # Stop at piece (capture or block)
        else
          [next_pos | slide(board, next_pos, dx, dy)]
        end
    end
  end

  defp pos(file, rank) do
    case Position.new(file, rank) do
      {:ok, p} -> p
      _ -> nil
    end
  end

end
