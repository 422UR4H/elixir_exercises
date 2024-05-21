import Config

config :ex_project, ExProject.Main.Repo,
  # database: System.get_env("DATABASE_NAME", "ex_project_repo"),
  # username: System.get_env("DATABASE_USERNAME", "postgres"),
  # password: System.get_env("DATABASE_PASSWORD", "123"), # fake pass
  # hostname: System.get_env("DATABASE_HOST", "localhost"),

  database: "ex_project_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  priv: "priv/main"

config :ex_project,
  ecto_repos: [ExProject.Main.Repo]
