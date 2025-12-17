defmodule ChessServer.Domain.GameState do
  @moduledoc """
  The aggregate root for a Chess Game.
  """

  alias ChessServer.Domain.{Board, Move, MoveValidator, Piece}

  defstruct [
    :game_id,
    :white_player,
    :black_player,
    :board,
    :turn_color,
    :status,
    :move_count
  ]

  def new(game_id, white_player, black_player) do
    %__MODULE__{
      game_id: game_id,
      white_player: white_player,
      black_player: black_player,
      board: Board.initial_setup(),
      turn_color: :white,
      status: :active,
      move_count: 0
    }
  end

  def make_move(%__MODULE__{status: :active} = state, %Move{} = move) do
    case MoveValidator.valid_move?(state.board, move, state.turn_color) do
      :ok ->
        {:ok, new_board} = Board.move_piece(state.board, move.from, move.to)

        # Next turn
        next_turn = if state.turn_color == :white, do: :black, else: :white

        {:ok, %{state |
          board: new_board,
          turn_color: next_turn,
          move_count: state.move_count + 1
        }}

      {:error, reason} -> {:error, reason}
    end
  end

  def make_move(%__MODULE__{}, _), do: {:error, :game_over}
end
