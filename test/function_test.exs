defmodule FunctionTest do
  use ExUnit.Case
  doctest NewTestHound

  test "greet the world", meta do    
    assert NewTestHound.hello() == :world
  end

end
