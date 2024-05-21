defmodule ExProject.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ExProject.Main.Repo,
      # Starts a worker by calling: ExProject.Worker.start_link(arg)
      # {ExProject.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExProject.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
