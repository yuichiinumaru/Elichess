defmodule ChessServer.Infrastructure.Projections.Game do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, autogenerate: false}
  schema "games" do
    field :white_player, :string
    field :black_player, :string
    field :status, :string
    field :turn_color, :string
    field :fen, :string
    field :move_count, :integer
    field :game_mode, :string
    field :winner, :string

    timestamps()
  end

  def changeset(game, attrs) do
    game
    |> cast(attrs, [:id, :white_player, :black_player, :status, :turn_color, :fen, :move_count, :game_mode, :winner])
    |> validate_required([:id, :white_player, :black_player, :status, :turn_color, :fen])
  end
end
