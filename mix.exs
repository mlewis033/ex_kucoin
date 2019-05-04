defmodule ExKucoin.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_kucoin,
      version: "0.0.1",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      name: "ExKucoin",
      description: "KuCoin API client for Elixir",
      source_url: "https://github.com/yurikoval/ex_kucoin"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.0"},
      {:jason, "~> 1.1"},
      {:websockex, "~> 0.4.0"},
      {:mock, "~> 0.3.3", only: :test},
      {:credo, "~> 0.8.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0.0-rc.6", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "ExKucoin",
      extras: ["README.md"]
    ]
  end

  defp package do
    [
      name: :ex_kucoin,
      maintainers: ["Yuri Koval'ov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/yurikoval/ex_kucoin"}
    ]
  end
end