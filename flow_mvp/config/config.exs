# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :flow_mvp,
  ecto_repos: [FlowMvp.Repo]

# Configures the endpoint
config :flow_mvp, FlowMvp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dYbCT7m2um64IgcsssMth+O2lALHcoCvrhPTgEJFQQh5jmyY1ndk2gZJ0njA+VKg",
  render_errors: [view: FlowMvp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FlowMvp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
