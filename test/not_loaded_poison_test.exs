defmodule NotLoaded.PoisonTest do
  use ExUnit.Case, async: true

  test "Poison.encode/1" do
    not_loaded = %NotLoaded{__field__: :author}

    assert {:error, {:invalid, ^not_loaded}} = Poison.encode(not_loaded)
  end
end
