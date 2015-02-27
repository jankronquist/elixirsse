FROM trenpixster/elixir

RUN git clone https://github.com/jankronquist/elixirsse && \
    cd elixirsse && \
    mix deps.get && \
    mix compile

WORKDIR /elixirsse

EXPOSE 8080

ENTRYPOINT ["mix", "run", "wait.exs"]
