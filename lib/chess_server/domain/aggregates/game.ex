defmodule ChessServer.Domain.Aggregates.Game do
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Domain.Events.{GameCreated, MoveMade}
  alias ChessServer.Domain.{Board, Move, GameState}

  # Command Handlers

  def execute(nil, %CreateGame{} = cmd) do
    %GameCreated{
      game_id: cmd.game_id,
      white_player: cmd.white_player,
      black_player: cmd.black_player
    }
  end

  def execute(%GameState{}, %CreateGame{}), do: {:error, :game_already_exists}
  def execute(nil, %MakeMove{}), do: {:error, :game_not_found}

  def execute(%GameState{status: :active} = state, %MakeMove{} = cmd) do
    with {:ok, move} <- Move.from_strings(cmd.from, cmd.to, cmd.promotion) do
        case GameState.make_move(state, move) do
          {:ok, new_state} ->
            %MoveMade{
              game_id: cmd.game_id,
              from: cmd.from,
              to: cmd.to,
              fen: Board.to_fen(new_state.board),
              turn_color: new_state.turn_color,
              promotion: cmd.promotion
            }

          {:error, reason} -> {:error, reason}
        end
    else
      err -> err
    end
  end

  # State Mutators (Apply)

  def apply(nil, %GameCreated{} = event) do
    GameState.new(event.game_id, event.white_player, event.black_player)
  end

  def apply(%GameState{} = state, %MoveMade{} = event) do
    # Now we have promotion info in event
    {:ok, move} = Move.from_strings(event.from, event.to, event.promotion)

    case GameState.make_move(state, move) do
      {:ok, new_state} -> new_state
      {:error, _} -> state
    end
  end
end
