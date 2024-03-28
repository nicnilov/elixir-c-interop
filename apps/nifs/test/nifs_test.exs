defmodule NifsTest do
  use ExUnit.Case
  doctest Nifs

  test "calls the nif and returns an int" do
    assert Nifs.add(3, 2) == 5
  end
end
