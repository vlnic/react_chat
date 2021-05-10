defmodule ReactChat.Repo do
  use Ecto.Repo,
    otp_app: :react_chat,
    adapter: Ecto.Adapters.Postgres
end
