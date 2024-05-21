defmodule ExProject.Main.Repo do
  use Ecto.Repo,
    otp_app: :ex_project,
    adapter: Ecto.Adapters.Postgres
end
