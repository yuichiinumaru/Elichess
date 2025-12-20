defmodule ChessServer.Domain.Logic.FiftyMoveRuleTest do
  use ExUnit.Case
  alias ChessServer.Domain.{Board, GameState, Piece, Position}

  # Helper to access GameState logic which implements 50 move rule implicitly via make_move
  # We test GameState behavior directly.

  setup do
    state = GameState.new("game-50", "white", "black")
    # Clear board
    {:ok, state: %{state | board: Board.new(), half_move_clock: 99}}
  end

  defp place(state, pos_str, color, type) do
    {:ok, pos} = Position.from_string(pos_str)
    board = Board.place_piece(state.board, pos, Piece.new(color, type))
    %{state | board: board}
  end

  defp make_move(state, from, to) do
    # Note: Move.new return struct directly in updated code, not {:ok, move}.
    # Wait, earlier Move.new/3 was defined as:
    # def new(%Position{} = from, %Position{} = to, promotion \\ nil) do
    #   %__MODULE__{from: from, to: to, promotion: promotion}
    # end
    # So it returns struct, not {:ok, struct}.

    {:ok, f} = Position.from_string(from)
    {:ok, t} = Position.from_string(to)
    move = ChessServer.Domain.Move.new(f, t)
    ChessServer.Domain.GameState.make_move(state, move)
  end

  test "resets clock on pawn move", %{state: state} do
    # White pawn on e2 -> e3. Clock 99 -> 0.
    state = place(state, "e2", :white, :pawn)
    state = place(state, "e8", :black, :king) # Needed for valid game
    state = place(state, "e1", :white, :king)

    {:ok, new_state} = make_move(state, "e2", "e3")
    assert new_state.half_move_clock == 0
  end

  test "resets clock on capture", %{state: state} do
    # White Rook captures Black Pawn
    state = place(state, "e2", :white, :rook)
    state = place(state, "e3", :black, :pawn)
    state = place(state, "e8", :black, :king)
    state = place(state, "e1", :white, :king)

    {:ok, new_state} = make_move(state, "e2", "e3")
    assert new_state.half_move_clock == 0
  end

  test "increments clock on quiet move", %{state: state} do
    # White Rook moves e2 -> e3 (empty)
    state = place(state, "e2", :white, :rook)
    state = place(state, "e8", :black, :king)
    state = place(state, "e1", :white, :king)

    state = %{state | half_move_clock: 50}
    {:ok, new_state} = make_move(state, "e2", "e3")
    assert new_state.half_move_clock == 51
  end

  test "triggers draw when clock reaches 100", %{state: state} do
    # White Rook moves e2 -> e3. Clock 99 -> 100.
    state = place(state, "e2", :white, :rook)
    state = place(state, "e8", :black, :king)
    state = place(state, "e1", :white, :king)

    state = %{state | half_move_clock: 99}
    {:ok, new_state} = make_move(state, "e2", "e3")
    assert new_state.half_move_clock == 100
    assert new_state.status == :draw_50_move_rule
  end
end
