defmodule ChessServer.Domain.Aggregates.Game do
  # We do NOT define a struct here. We use ChessServer.Domain.GameState as the aggregate state.

  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Domain.Events.{GameCreated, MoveMade}
  alias ChessServer.Domain.{Board, Move, GameState, Position}

  # Command Handlers

  # Initial state is nil before creation
  def execute(nil, %CreateGame{} = cmd) do
    %GameCreated{
      game_id: cmd.game_id,
      white_player: cmd.white_player,
      black_player: cmd.black_player
    }
  end

  # If state exists, we can't create again
  def execute(%GameState{}, %CreateGame{}), do: {:error, :game_already_exists}

  # If state is nil, we can't make a move
  def execute(nil, %MakeMove{}), do: {:error, :game_not_found}

  def execute(%GameState{status: :active} = state, %MakeMove{} = cmd) do
    with {:ok, move} <- Move.new(cmd.from, cmd.to, cmd.promotion) do
        case GameState.make_move(state, move) do
          {:ok, new_state} ->
            %MoveMade{
              game_id: cmd.game_id,
              from: cmd.from,
              to: cmd.to,
              fen: Board.to_fen(new_state.board), # We will implement this
              turn_color: new_state.turn_color
            }

          {:error, reason} -> {:error, reason}
        end
    else
      err -> err
    end
  end

  # State Mutators (Apply)

  def apply(nil, %GameCreated{} = event) do
    # Initialize state using Domain logic
    GameState.new(event.game_id, event.white_player, event.black_player)
  end

  def apply(%GameState{} = state, %MoveMade{} = event) do
    {:ok, from} = Position.from_string(event.from)
    {:ok, to} = Position.from_string(event.to)

    # We blindly apply the move because it was validated in execute/2
    {:ok, new_board} = Board.move_piece(state.board, from, to)

    %{state |
      board: new_board,
      turn_color: event.turn_color,
      move_count: state.move_count + 1
    }
  end
end
