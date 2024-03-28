defmodule Nifs do
  @on_load :load_nifs

  def load_nifs do
    Application.app_dir(:nifs, "priv/nifs") |> :erlang.load_nif(0)
  end

  def add(_a, _b) do
    raise "NIF add/2 not implemented"
  end
end
