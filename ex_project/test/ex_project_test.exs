defmodule ExProjectTest do
  use ExUnit.Case
  doctest ExProject

  test "greets the world" do
    assert ExProject.hello() == :world
  end
end
