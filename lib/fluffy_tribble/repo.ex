defmodule FluffyTribble.Repo do
  use Ecto.Repo,
    otp_app: :fluffy_tribble,
    adapter: Ecto.Adapters.Postgres
end
