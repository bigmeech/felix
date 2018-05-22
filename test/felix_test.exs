defmodule FelixTest do
  use ExUnit.Case, async: true
  doctest Felix

  test "stores value by some key" do
    {:ok, store} = Felix.start_link([])
    assert Felix.get(store, ["itemId1"]) === nil

    Felix.put(store, "itemId1", "12345")
    assert Felix.get(store, "itemId1") == "12345"
  end

end
