defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  @oven_time 40
  @minutes_per_layer 2
  def expected_minutes_in_oven(), do: @oven_time

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(time_elapsed), do: @oven_time - time_elapsed

  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(layers), do: layers * @minutes_per_layer

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, time_elapsed),
    do: layers * @minutes_per_layer + time_elapsed

  # Please define the 'alarm/0' function
  def alarm(), do: "Ding!"
end
