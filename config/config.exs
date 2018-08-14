# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_redis,
  ecto_repos: [PhxRedis.Repo]

# Configures the endpoint
config :phx_redis, PhxRedisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+w1WypdJrSwawFgB+1ULhuvj9dDaK/+GCBjXC+tZoQSHXlLVLf3c+3U7immka0q9",
  render_errors: [view: PhxRedisWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxRedis.PubSub,
          pool_size: 4,
           # adapter: Phoenix.PubSub.PG2]
           node_name: "main_node",
           host: "127.0.0.1",
           adapter: Phoenix.PubSub.Redis]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
