defmodule ChessServer.GameModeTest do
  use ExUnit.Case
  alias ChessServer.Game
  alias ChessServer.Domain.Commands.CreateGame
  alias ChessServer.Game.Started

  test "CreateGame allows self-play in casual mode (default)" do
    cmd = %CreateGame{game_id: "g1", white_player: "me", black_player: "me", game_mode: :casual}
    assert %Started{} = Game.execute(nil, cmd)
  end

  test "CreateGame prohibits self-play in rated mode" do
    cmd = %CreateGame{game_id: "g2", white_player: "me", black_player: "me", game_mode: :rated}
    assert {:error, :cannot_play_against_self_in_rated} = Game.execute(nil, cmd)
  end

  test "CreateGame allows different players in rated mode" do
    cmd = %CreateGame{game_id: "g3", white_player: "p1", black_player: "p2", game_mode: :rated}
    assert %Started{} = Game.execute(nil, cmd)
  end
end
