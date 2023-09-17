defmodule Martyparty.Repo do
  use Ecto.Repo,
    otp_app: :martyparty,
    adapter: Ecto.Adapters.Postgres
end
