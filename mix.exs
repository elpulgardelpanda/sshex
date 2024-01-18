defmodule SSHEx.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sshex,
      version: "2.2.1",
      elixir: "~> 1.14",
      package: package(),
      deps: deps(),
      description: "Simple SSH helpers for Elixir"
    ]
  end

  def application do
    [extra_applications: [:ssh]]
  end

  defp package do
    [
      maintainers: ["Rubén Caro"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/rubencaro/sshex"}
    ]
  end

  defp deps, do: [{:ex_doc, ">= 0.0.0", only: :dev}]
end
