defmodule KitchenCalculator do
  @units %{
    cup: 240,
    fluid_ounce: 30,
    teaspoon: 5,
    tablespoon: 15,
    milliliter: 1
  }

  def get_volume({_unit, volume}) do
    volume
  end

  def to_milliliter({from, volume}), do: {:milliliter, volume * Map.fetch!(@units, from)}

  def from_milliliter({:milliliter, volume}, to), do: {to, volume / Map.fetch!(@units, to)}

  def convert({from, volume}, to) do
    {to, Map.fetch!(@units, from) * volume / Map.fetch!(@units, to)}
  end
end
