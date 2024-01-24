defmodule ElixirSlack.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    port = Application.fetch_env!(:elixir_slack, :port)

    children = [
      {Bandit, plug: ElixirSlack.Plug, port: port, scheme: :http}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ElixirSlack.Supervisor)
  end
end
