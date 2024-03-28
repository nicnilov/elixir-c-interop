defmodule Nifs.MixProject do
  use Mix.Project

  def project do
    [
      app: :nifs,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      make_clean: ["clean"],

      # The ERL_INCLUDE_PATH is unused but left as an example.
      # Instead the ERTS_INCLUDE_DIR is provided up by elixir_make.
      make_env: %{"ERL_INCLUDE_PATH" => erl_include_dir()},
      compilers: [:elixir_make] ++ Mix.compilers
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true}
      {:elixir_make, "~> 0.4", runtime: false}
    ]
  end

  defp erl_include_dir() do
    :io_lib.format("~ts/erts-~ts/include", [:code.root_dir(), :erlang.system_info(:version)]) |> to_string()
  end
end
