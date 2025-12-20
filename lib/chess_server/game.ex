defmodule ChessServer.Game do
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Game.{Started, Progressed, Finished}
  alias ChessServer.Domain.{Board, Move, GameState}

  # Command Handlers

  def execute(nil, %CreateGame{} = cmd) do
    %Started{
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
            events = [
              %Progressed{
                game_id: cmd.game_id,
                from: cmd.from,
                to: cmd.to,
                fen: Board.to_fen(new_state.board),
                turn_color: new_state.turn_color,
                promotion: cmd.promotion
              }
            ]

            # Check if game finished and append event
            if new_state.status != :active do
              winner = case new_state.status do
                :checkmate_white_wins -> :white
                :checkmate_black_wins -> :black
                _ -> nil # Draw
              end

              events ++ [%Finished{
                game_id: cmd.game_id,
                reason: new_state.status,
                winner: winner
              }]
            else
              events
            end

          {:error, reason} -> {:error, reason}
        end
    else
      err -> err
    end
  end

  # Ignore commands if game finished
  def execute(%GameState{}, %MakeMove{}), do: {:error, :game_finished}

  # State Mutators (Apply)

  def apply(nil, %Started{} = event) do
    GameState.new(event.game_id, event.white_player, event.black_player)
  end

  def apply(%GameState{} = state, %Progressed{} = event) do
    {:ok, move} = Move.from_strings(event.from, event.to, event.promotion)

    case GameState.make_move(state, move) do
      {:ok, new_state} -> new_state
      {:error, _} -> state
    end
  end

  def apply(%GameState{} = state, %Finished{} = event) do
    %{state | status: event.reason}
  end
end
