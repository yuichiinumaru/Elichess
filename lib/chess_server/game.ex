defmodule ChessServer.Game do
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove, OfferDraw, RespondToDraw}
  alias ChessServer.Game.{Started, DrawOffered, DrawDeclined, Finished}
  alias ChessServer.Chess
  alias ChessServer.Domain.Move
  alias ChessServer.Domain.GameState

  # Command Handlers

  def execute(nil, %CreateGame{} = cmd) do
    %Started{
      game_id: cmd.game_id,
      white_player: cmd.white_player,
      black_player: cmd.black_player,
      time_control: cmd.time_control
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

  alias ChessServer.Domain.Color

  def execute(%GameState{status: :active} = state, %OfferDraw{color: color}) do
    with {:ok, valid_color} <- Color.validate(color) do
       # Check if already offered? For now just emit.
       %DrawOffered{game_id: state.game_id, color: valid_color}
    else
       _ -> {:error, :invalid_color}
    end
  end

  def execute(%GameState{status: :active} = state, %RespondToDraw{color: color, response: :accept}) do
     # Check if draw is offered by opponent
     opponent = if color == "white" || color == :white, do: :black, else: :white
     if state.draw_offer == opponent do
        %Finished{game_id: state.game_id, reason: :draw_agreed, winner: nil}
     else
        {:error, :no_draw_offer_from_opponent}
     end
  end

  def execute(%GameState{status: :active} = state, %RespondToDraw{color: color, response: :decline}) do
     %DrawDeclined{game_id: state.game_id, color: color}
  end

  def execute(%GameState{}, _), do: {:error, :game_over_or_invalid}

  # State Mutators (Apply)

  def apply(nil, %Started{} = event) do
    Chess.new_game(event.game_id, event.white_player, event.black_player, event.time_control)
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
      {:ok, new_state} -> %{new_state | draw_offer: nil} # Move invalidates draw offer
      {:error, _} -> state
    end
  end

  alias ChessServer.Game.Finished
  def apply(%GameState{} = state, %Finished{} = event) do
    %{state | status: event.reason, draw_offer: nil}
  end

  alias ChessServer.Domain.Color

  def apply(%GameState{} = state, %DrawOffered{} = event) do
    color = case event.color do
      c when is_atom(c) -> c
      c when is_binary(c) ->
        case Color.validate(c) do
          {:ok, valid_color} -> valid_color
          _ -> nil # Should not happen if validation passed in execute
        end
    end
    %{state | draw_offer: color}
  end

  def apply(%GameState{} = state, %DrawDeclined{}) do
    %{state | draw_offer: nil}
  end

  def apply(%GameState{} = state, %DrawOffered{} = event) do
    color = if is_binary(event.color), do: String.to_existing_atom(event.color), else: event.color
    %{state | draw_offer: color}
  end

  def apply(%GameState{} = state, %DrawDeclined{}) do
    %{state | draw_offer: nil}
  end

  # Reset draw offer on move? Usually chess rules say draw offer expires if move is made?
  # The rule is: "A claim of a draw... remains in effect until the opponent accepts it or rejects it... or moves."
  # So we should reset draw_offer on Progressed.
  # Let's check existing Progressed handler.

  # Semantic events are ignored for state reconstruction as `Progressed` contains the state transition (implicit or explicit FEN)
  def apply(%GameState{} = state, _semantic_event), do: state
end
