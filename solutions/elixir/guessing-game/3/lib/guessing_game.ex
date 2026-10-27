defmodule GuessingGame do
  @make_a_guess "Make a guess"
  @so_close "So close"
  @too_high "Too high"
  @too_low "Too low"
  @correct "Correct"

  def compare(_secret_number, guess \\ :no_guess)
  def compare(_secret_number, :no_guess), do: @make_a_guess

  def compare(secret_number, guess) when secret_number + 1 == guess or secret_number - 1 == guess,
    do: @so_close

  def compare(secret_number, guess) when secret_number < guess, do: @too_high
  def compare(secret_number, guess) when secret_number > guess, do: @too_low
  def compare(secret_number, guess) when secret_number == guess, do: @correct
end
