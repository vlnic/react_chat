defmodule ReactChatWeb.RoomView do
  use ReactChatWeb, :view
  alias ReactChatWeb.RoomView

  def render("index.json", %{rooms: rooms}) do
    %{data: render_many(rooms, RoomView, "room.json")}
  end

  def render("show.json", %{room: room}) do
    %{data: render_one(room, RoomView, "room.json")}
  end

  def render("room.json", %{room: room}) do
    %{id: room.id,
      type: room.type,
      name: room.name,
      description: room.description}
  end
end
