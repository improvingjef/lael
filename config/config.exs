# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :lael, LaelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "95EtaaaqyUU/RQ3sHopjMJkj05sNZKwisfpOlWML3oDK9TtyDDIbNMwAF5tw+W0l",
  render_errors: [view: LaelWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Lael.PubSub,
  live_view: [signing_salt: "iw7KMtqM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
