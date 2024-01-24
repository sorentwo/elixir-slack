import Config

invite_tokens =
  "INVITE_TOKENS"
  |> System.get_env("")
  |> String.split(~r/\s*/)

config :elixir_slack,
  invite_tokens: invite_tokens,
  port: String.to_integer(System.get_env("PORT", "8000"))

