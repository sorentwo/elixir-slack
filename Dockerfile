FROM hexpm/elixir:1.16.0-erlang-26.2.1-alpine-3.17.5 as build

WORKDIR /app

ENV MIX_ENV=prod

# Dependencies

RUN mix local.hex --force && mix local.rebar --force

# Mix/Hex Dependencies

COPY mix.exs mix.lock ./
RUN mix deps.get --only prod

COPY config config
COPY lib lib
RUN mix do compile, release

# Released

FROM alpine:3.17.5 AS app
RUN apk add --no-cache libstdc++ openssl ncurses-libs

WORKDIR /app

RUN chown nobody:nobody /app

USER nobody:nobody

COPY --from=build --chown=nobody:nobody /app/_build/prod/rel/elixir_slack ./

ENV HOME=/app
ENV MIX_ENV=prod

ENTRYPOINT ["bin/elixir_slack"]
CMD ["start"]
