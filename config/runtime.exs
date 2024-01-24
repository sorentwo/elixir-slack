import Config

# Tokens are listed with the date they were added to make pruning old, "dead" links easier.
tokens = %{
  "2024-01-24" => "zt-216sp1w4g-MHgJlFeJKTBCzPejZj7_tw",
  "2024-01-24" => "zt-2b8vocbsl-8HPQL3vchrSZGt_I4ypMsw",
  "2024-01-24" => "zt-2bklcc3k0-VBGZE6s32lF7HyPBCoZ40A",
  "2024-01-24" => "zt-2b75947fa-1UHbh8s4d_y~4vEhsX20~Q",
  "2024-01-24" => "zt-2apqof3wh-QVSNtcdERC8YkY99leoWyQ"
}

config :elixir_slack,
  port: String.to_integer(System.get_env("PORT", "8000")),
  invite_tokens: Map.values(tokens)
