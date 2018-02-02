defmodule NotLoaded.Poison.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @maintainers ["Aaron Renner"]
  @source_url "https://github.com/aaronrenner/not_loaded_poison"

  def project do
    [
      app: :not_loaded_poison,
      version: @version,
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),

      # Docs
      name: "NotLoaded.Poison",
      docs: docs(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application, do: []

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 2.0 or ~> 3.0"},
      {:not_loaded, "~> 0.1"},

      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
    ]
  end

  # Run "mix help docs" to learn about docs
  defp docs do
    [
      source_url: @source_url,
      source_rev: "v#{@version}",
    ]
  end

  defp description do
    "Integration between NotLoaded & Poison"
  end

  defp package do
    [
      maintainers: @maintainers,
      licenses: ["MIT"],
      links: %{
        "Github" => @source_url,
        "Not Loaded" => "https://hex.pm/packages/not_loaded",
        "Poison" => "https://hex.pm/packages/poison",
      },
    ]
  end
end
