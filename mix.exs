defmodule Hellowebmachine.Mixfile do
  use Mix.Project

  def project do
    [app: :elixirsse,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:logger, :ewebmachine],
     mod: {MySup, []}]
  end

  defp deps do
    [{:ewebmachine, "~> 1.0.0"},
     {:webmachine, github: "basho/webmachine", tag: "1.10.6"}]
  end
end
