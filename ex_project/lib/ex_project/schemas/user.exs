defmodule ExProject.Schemas.User do
  use Ecto.Schema

  schema "users" do
    field(:username, :string)
    field(:nickname, :string)
    field(:password, :string)
    field(:birthday, :calendar)
    timestamps()
  end
end
