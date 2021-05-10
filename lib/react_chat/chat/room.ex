defmodule ReactChat.Chat.Room do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rooms" do
    field :description, :string
    field :name, :string
    field :type, :integer

    timestamps()
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:type, :name, :description])
    |> validate_required([:type, :name, :description])
  end
end
