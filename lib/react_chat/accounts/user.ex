defmodule ReactChat.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :avatar, :string
    field :email, :string
    field :nickname, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:nickname, :password, :email, :avatar])
    |> validate_required([:nickname, :password, :email, :avatar])
  end
end
