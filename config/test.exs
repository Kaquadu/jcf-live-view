use Mix.Config

# Configure your database
config :jcf_bug, JcfBug.Repo,
  username: "postgres",
  password: "postgres",
  database: "jcf_bug_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :jcf_bug, JcfBugWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
