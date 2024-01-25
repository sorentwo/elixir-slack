import Config

# Tokens are listed with the date they were added to make pruning old, "dead" links easier.
# 
# NOTE: Be sure to disable the expiration when adding invite tokens.
#
tokens = %{
  "zt-216sp1w4g-MHgJlFeJKTBCzPejZj7_tw" => "2024-01-24",
  "zt-2bklcc3k0-VBGZE6s32lF7HyPBCoZ40A" => "2024-01-24",
  "zt-2b75947fa-1UHbh8s4d_y~4vEhsX20~Q" => "2024-01-24",
  "zt-2b8vocbsl-8HPQL3vchrSZGt_I4ypMsw" => "2024-01-24",
  "zt-2b90hwr0l-KzkegyzRL1XgmA6Q~CAlIQ" => "2024-01-24",
  "zt-2bbb5qnj7-wcwQEn5c5hHrwcOA6E~EuA" => "2024-01-25",
  "zt-2b9t5p1rp-EE6OhaFZMEw8ZlSqjyd65A" => "2024-01-25",
  "zt-2apqof3wh-QVSNtcdERC8YkY99leoWyQ" => "2024-01-25",
  "zt-2bhcy20sh-LXoMIXFkb8Wi2JIKqSJ26A" => "2024-01-25",
  "zt-2bheza4w1-ZT_D3yK~UIdUiLTT28MeXA" => "2024-01-25",
  "zt-2bbqhy94k-Sc_~xixESnUhoERhtaapQQ" => "2024-01-25",
  "zt-2bmipt79c-MZQbgE7CCPdC83WTu5NAJA" => "2024-01-25",
  "zt-2b9ewhno6-HeTW_HC~2XLX9Xybkpz8mA" => "2024-01-25"
}

config :elixir_slack,
  port: String.to_integer(System.get_env("PORT", "8000")),
  invite_tokens: Map.keys(tokens)
