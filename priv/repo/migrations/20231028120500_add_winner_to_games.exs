defmodule ChessServer.Repo.Migrations.AddWinnerToGames do
  use Ecto.Migration

  def change do
    alter table(:games) do
      add :winner, :string
    end
  end
end
