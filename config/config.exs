# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jcf_bug,
  ecto_repos: [JcfBug.Repo]

# Configures the endpoint
config :jcf_bug, JcfBugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CHuPh2crIxSgVHd/ql7zS+WTClAS1uAq02Uz79xkRMUSta+Weq2YfXXhpxv4Bv3f",
  render_errors: [view: JcfBugWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JcfBug.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason


config :jcf_bug, JcfBugWeb.Endpoint,
   live_view: [
     signing_salt: "Ex6C1+kRXeNZigHvhTh1oUToRfuB9bjb"
   ]
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
