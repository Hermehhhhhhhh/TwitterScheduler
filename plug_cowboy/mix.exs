defmodule PlugCowboy.MixProject do
  use Mix.Project

  def project do
    [
      app: :plug_cowboy,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :plug, :cowboy],
      mod: {PlugCowboy, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.0"},
      {:cowboy, "~> 1.0.0"}
    ]
  end
end
