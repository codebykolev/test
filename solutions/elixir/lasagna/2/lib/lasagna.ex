defmodule Lasagna do
  @oven_time 40
  @minutes_per_layer 2
  def expected_minutes_in_oven(), do: @oven_time

  def remaining_minutes_in_oven(time_elapsed), do: expected_minutes_in_oven() - time_elapsed

  def preparation_time_in_minutes(layers), do: layers * @minutes_per_layer

  def total_time_in_minutes(layers, time_elapsed),
    do: preparation_time_in_minutes(layers) + time_elapsed

  def alarm(), do: "Ding!"
end
