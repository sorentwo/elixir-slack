# ElixirSlack

Round-robin invites to the official [Elixir Slack](https://elixir-lang.slack.com).

## Usage

Build and run the app locally:

```bash
MIX_ENV=prod mix do deps.get, release

_build/prod/rel/elixir_slack/bin/elixir_slack start
```

Run the app within the docker container locally:

```bash
docker build -t elixir_slack .
docker run --env PORT=8000 -p 8000:8000 elixir_slack
```

Or, deploy to fly by changing the name in `fly.toml` and then run:

```bash
fly launch
```

# License

MIT. See the [License](LICENSE.txt)
