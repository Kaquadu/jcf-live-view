defmodule JcfBug.Repo do
  use Ecto.Repo,
    otp_app: :jcf_bug,
    adapter: Ecto.Adapters.Postgres
end
