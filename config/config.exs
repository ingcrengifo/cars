import Config

config :cars, Cars.Repo,
  database: "cars_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :cars, ecto_repos: [Cars.Repo]
