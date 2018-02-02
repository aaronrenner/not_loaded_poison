defmodule NotLoaded.Poison do
  @moduledoc """
  Integrates NotLoaded with Poison.

  It implements the Poison.Encoder protocol for NotLoaded to ensure it can't
  accidentally be converted to JSON.
  """
end

defimpl Poison.Encoder, for: NotLoaded do
  alias Poison.EncodeError

  def encode(value, _options) do
    raise EncodeError, value: value
  end
end
