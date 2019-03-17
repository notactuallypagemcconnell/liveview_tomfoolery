defmodule Livin.Repo do
  use Ecto.Repo,
    otp_app: :livin,
    adapter: Ecto.Adapters.Postgres
end
