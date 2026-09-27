defmodule FreelancerRates do
  @hours_per_day 8
  @monthly_billable_days 22
  def daily_rate(hourly_rate) do
    hourly_rate * @hours_per_day / 1
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(apply_discount(hourly_rate, discount) * @hours_per_day * @monthly_billable_days)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor(budget / (apply_discount(hourly_rate, discount) * @hours_per_day), 1)
  end
end
