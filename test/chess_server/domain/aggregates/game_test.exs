defmodule ChessServer.GameTest do
  use ExUnit.Case
  alias ChessServer.Game
  alias ChessServer.Domain.Commands.{CreateGame, MakeMove}
  alias ChessServer.Game.{Started, Progressed, PieceCaptured, KingChecked, PawnPromoted}
  alias ChessServer.Domain.GameState

  test "execute CreateGame returns Started event" do
    cmd = %CreateGame{game_id: "game-1", white_player: "white", black_player: "black"}

    assert %Started{
      game_id: "game-1",
      white_player: "white",
      black_player: "black"
    } = Game.execute(nil, cmd)
  end

  test "execute MakeMove returns Progressed event" do
    initial_state = GameState.new("game-1", "white", "black")

    cmd = %MakeMove{
      game_id: "game-1",
      from: "e2",
      to: "e4"
    }

    events = Game.execute(initial_state, cmd)

    # We might have other events, but Progressed is key
    assert Enum.any?(events, fn e -> match?(%Progressed{}, e) end)

    # Assert no capture or check in simple opening
    refute Enum.any?(events, fn e -> match?(%PieceCaptured{}, e) end)
  end

  test "execute MakeMove emits PieceCaptured on capture" do
    # Setup state with capture available
    # e.g. White pawn e4, Black pawn d5. White captures e4xd5
    # Since we don't have helper to set arbitrary board easily without events,
    # we can just use `Chess.make_move` logic or rely on valid game sequence.
    # Simpler: just inject state.

    alias ChessServer.Domain.{Board, Piece, Position}
    state = GameState.new("game-cap", "w", "b")
    {:ok, e4} = Position.new(4, 3) # Rank 4 is index 3? No, rank 4 is index 3 (0-based: 0,1,2,3)
    {:ok, d5} = Position.new(3, 4)

    # Manually place pieces
    board = state.board
    |> Board.place_piece(e4, Piece.new(:white, :pawn))
    |> Board.place_piece(d5, Piece.new(:black, :pawn))

    state = %{state | board: board, turn_color: :white}

    cmd = %MakeMove{
      game_id: "game-cap",
      from: "e4",
      to: "d5"
    }

    events = Game.execute(state, cmd)

    assert Enum.any?(events, fn e ->
      match?(%PieceCaptured{piece_type: :pawn, piece_color: :black}, e)
    end)
  end
end
