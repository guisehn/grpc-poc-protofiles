defmodule ElixirProtocTest do
  use ExUnit.Case
  doctest ElixirProtoc

  test "greets the world" do
    assert ElixirProtoc.hello() == :world
  end
end
