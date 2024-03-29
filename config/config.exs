# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :livin,
  ecto_repos: [Livin.Repo]

# Configures the endpoint
config :livin, LivinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1NU+l/yc3fBpAEADT9m97HeI8AjLJ59G0q0EXcUDn73uRNzKp35bFYKh2O2YIxdG",
  render_errors: [view: LivinWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Livin.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
     signing_salt: "SECRET_SALT"
   ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
