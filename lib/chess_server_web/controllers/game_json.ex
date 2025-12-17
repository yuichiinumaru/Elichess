defmodule ChessServerWeb.GameJSON do
  def show(%{game: game}) do
    %{data: data(game)}
  end

  defp data(game) do
    %{
      id: game.id,
      white_player: game.white_player,
      black_player: game.black_player,
      status: game.status,
      fen: Map.get(game, :fen), # use Map.get because atomic map vs struct keys
      turn_color: Map.get(game, :turn_color),
      move_count: Map.get(game, :move_count)
    }
  end
end
