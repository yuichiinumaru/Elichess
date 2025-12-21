defmodule ChessServer.Chess do
  @moduledoc """
  The Domain Context for Chess.
  Handles the orchestration of Game Logic, delegating to GameState and Rules.
  Returns rich results including Semantic Events.
  """

  alias ChessServer.Domain.{GameState, Move, Board, Position, MoveValidator}
  alias ChessServer.Domain.Logic.GameRules
  alias ChessServer.Game.{Progressed, Finished, PieceCaptured, KingChecked, PawnPromoted}

  def new_game(game_id, white, black, mode \\ :casual) do
    GameState.new(game_id, white, black, mode)
  end

  def make_move(%GameState{status: :active} = state, %Move{} = move) do
    with :ok <- MoveValidator.valid_move?(state, move) do
      # Calculate transitions and events
      apply_move_with_events(state, move)
    else
      err -> err
    end
  end

  def make_move(%GameState{}, _), do: {:error, :game_over}

  defp apply_move_with_events(state, move) do
    # 1. Capture?
    target_piece = Board.get_piece(state.board, move.to)

    # En Passant Capture check
    piece = Board.get_piece(state.board, move.from)
    is_ep_capture = piece.type == :pawn &&
                    state.en_passant_target == move.to &&
                    move.from.file != move.to.file

    captured_event = cond do
      target_piece ->
        %PieceCaptured{
          game_id: state.game_id,
          piece_type: target_piece.type,
          piece_color: target_piece.color,
          square: Position.to_string(move.to)
        }
      is_ep_capture ->
        %PieceCaptured{
          game_id: state.game_id,
          piece_type: :pawn,
          piece_color: if(state.turn_color == :white, do: :black, else: :white),
          square: Position.to_string(if(state.turn_color == :white, do: %{move.to | rank: move.to.rank - 1}, else: %{move.to | rank: move.to.rank + 1}))
        }
      true -> nil
    end

    # 2. Apply Move (State Transition)
    case GameState.make_move(state, move) do
      {:ok, new_state} ->
        # 3. Promotion?
        promotion_event = if move.promotion do
          %PawnPromoted{
            game_id: state.game_id,
            square: Position.to_string(move.to),
            promotion_type: move.promotion
          }
        else
          nil
        end

        # 4. Check?
        is_check = ChessServer.Domain.Logic.CheckValidator.is_in_check?(new_state.board, new_state.turn_color)

        check_event = if is_check do
          %KingChecked{
            game_id: state.game_id,
            color: new_state.turn_color
          }
        else
          nil
        end

        # 5. Build Event List
        base_event = %Progressed{
          game_id: state.game_id,
          from: Position.to_string(move.from),
          to: Position.to_string(move.to),
          fen: Board.to_fen(new_state.board),
          turn_color: new_state.turn_color,
          promotion: move.promotion
        }

        events = [base_event, captured_event, promotion_event, check_event]
                 |> Enum.reject(&is_nil/1)

        # 6. Game Over?
        game_over_events = if new_state.status != :active do
           winner = case new_state.status do
                :checkmate_white_wins -> :white
                :checkmate_black_wins -> :black
                _ -> nil
           end
           [%Finished{game_id: state.game_id, reason: new_state.status, winner: winner}]
        else
           []
        end

        {:ok, new_state, events ++ game_over_events}

      err -> err
    end
  end
end
