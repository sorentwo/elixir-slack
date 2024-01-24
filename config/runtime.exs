import Config

config :elixir_slack,
  port: String.to_integer(System.get_env("PORT", "8000")),
  invite_tokens: ~w(
    zt-216sp1w4g-MHgJlFeJKTBCzPejZj7_tw
    zt-2bklcc3k0-VBGZE6s32lF7HyPBCoZ40A
  )
