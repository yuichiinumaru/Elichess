defmodule ChessServer.Repo.Migrations.AddGameModeToGames do
  use Ecto.Migration

  def change do
    alter table(:games) do
      add :game_mode, :string, default: "casual"
    end
  end
end
