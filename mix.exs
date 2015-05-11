defmodule Tmdb.Mixfile do
  use Mix.Project

  def project do
    [app: :tmdb,
     version: "0.0.5",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:httpoison, :poison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      { :httpoison, "~> 0.6", app: true },
      { :poison, "~> 1.4.0", app: true },
      { :exjsx, "~> 3.1.0", app: false },
      { :ex_doc, "~> 0.6.1", only: :docs },
      { :earmark, "~> 0.1.12", only: :docs }
    ]
  end
end
