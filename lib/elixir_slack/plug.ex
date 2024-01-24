defmodule ElixirSlack.Plug do
  @moduledoc false

  import Plug.Conn

  @root "https://join.slack.com/t/elixir-lang/shared_invite/"

  def init(opts), do: opts

  def call(conn, _opts) do
    token =
      :elixir_slack
      |> Application.fetch_env!(:invite_tokens)
      |> Enum.random()

    conn
    |> put_resp_header("location", Path.join(@root, token))
    |> send_resp(:found, "Redirecting")
  end
end
