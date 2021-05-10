defmodule ReactChat.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      add :type, :integer
      add :name, :string
      add :description, :string
      add :users, :json

      timestamps()
    end

  end
end
