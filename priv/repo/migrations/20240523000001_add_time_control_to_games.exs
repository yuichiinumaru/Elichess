defmodule ChessServer.Repo.Migrations.AddTimeControlToGames do
  use Ecto.Migration

  def change do
    alter table(:games) do
      add :time_control, :string
    end
  end
end
