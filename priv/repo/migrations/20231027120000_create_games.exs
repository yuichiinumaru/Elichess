defmodule ChessServer.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games, primary_key: false) do
      add :id, :string, primary_key: true
      add :white_player, :string
      add :black_player, :string
      add :status, :string
      add :turn_color, :string
      add :fen, :text
      add :move_count, :integer

      timestamps()
    end
  end
end
