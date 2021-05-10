defmodule ReactChat.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :nickname, :string
      add :password, :string
      add :email, :string
      add :avatar, :string

      timestamps()
    end

  end
end
