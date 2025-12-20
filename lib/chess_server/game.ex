defmodule ChessServer.Game do
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Game.Started
  alias ChessServer.Chess
  alias ChessServer.Domain.Move
  alias ChessServer.Domain.GameState

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

  def execute(%GameState{} = state, %MakeMove{} = cmd) do
    with {:ok, move} <- Move.from_strings(cmd.from, cmd.to, cmd.promotion) do
      case Chess.make_move(state, move) do
        {:ok, _new_state, events} -> events
        {:error, reason} -> {:error, reason}
      end
    else
      err -> err
    end
  end

  # State Mutators (Apply)

  def apply(nil, %Started{} = event) do
    Chess.new_game(event.game_id, event.white_player, event.black_player)
  end

  # We still apply standard events to update state.
  # Semantic events (Captured, Checked) generally don't change state reconstruction if Progressed/MoveMade has all info.
  # But we must handle them to avoid crashing if they are in the stream.

  alias ChessServer.Game.Progressed

  def apply(%GameState{} = state, %Progressed{} = event) do
    {:ok, move} = Move.from_strings(event.from, event.to, event.promotion)
    # We use the internal logic to fast-forward state.
    # Ideally `Chess.apply_event` but `GameState.make_move` is fine.
    case ChessServer.Domain.GameState.make_move(state, move) do
      {:ok, new_state} -> new_state
      {:error, _} -> state
    end
  end

  alias ChessServer.Game.Finished
  def apply(%GameState{} = state, %Finished{} = event) do
    %{state | status: event.reason}
  end

  # Semantic events are ignored for state reconstruction as `Progressed` contains the state transition (implicit or explicit FEN)
  def apply(%GameState{} = state, _semantic_event), do: state
end
