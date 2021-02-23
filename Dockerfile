FROM elixir:1.11.3-alpine

ENV MIX_HOME=/opt/mix

RUN apk add bash && \
  mix local.hex --force && \
  mix archive.install hex phx_new 1.5.7 --force

WORKDIR /usr/src/app
