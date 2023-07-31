import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :fluffy_tribble, FluffyTribbleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "d3a5IvaoA5LaZRdGvCyp3kIx3iC0JlIV5Cn71HfqyyrIpAS43huzsZIDTVzTaIDq",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
