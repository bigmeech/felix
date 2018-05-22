defmodule Felix do
  @moduledoc """
  Starts a new felix store
  """

  @doc """
    Starts a new Agent and returns an initial store state
  """
  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  @doc """
    Gets a value by key from a store
  """
  def get(store, key) do
    Agent.get(store, &Map.get(&1, key))
  end

  @doc """
    Stores a value by key to a store
  """
  def put(store, key, value) do
    Agent.update(store, &Map.put(&1, key, value))
  end
end
