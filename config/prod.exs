import Config


# Do not print debug messages in production
config :logger, level: :info,

config: :fluffy_tribble, FluffyTribbleWeb.Endpoint,
  server: true
# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
