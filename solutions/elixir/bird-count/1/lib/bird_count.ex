defmodule BirdCount do
  def today([]), do: nil

  def today([today | rest]) do
    today
  end

  def increment_day_count([]), do: [1]

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([head | tail]) when head === 0, do: true
  def has_day_without_birds?([head | tail]), do: has_day_without_birds?(tail)

  def total(list), do: Enum.sum(list)

  def busy_days([]), do: 0

  def busy_days(list) do
    busy_days(list, 0)
  end

  def busy_days([], acc), do: acc

  def busy_days([head | tail], acc) when head >= 5, do: busy_days(tail, acc + 1)
  def busy_days([head | tail], acc), do: busy_days(tail, acc)
end
