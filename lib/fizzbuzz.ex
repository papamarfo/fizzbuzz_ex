defmodule Fizzbuzz do
  @moduledoc """
  Documentation for Fizzbuzz.
  """

  @doc """
  FizzBuzz Program is a program defined as follow:
  For each multiple of 3, print "Fizz" instead of the number. 
  For each multiple of 5, print "Buzz" instead of the number. 
  For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.

  ## Examples

      iex> Fizzbuzz.multiples(n)
      :multiples

  """
  def multiples(n) do
    # for number n in range 1 to number n
    for n <- 1..n do
      cond do
        # if number is both multiple of 3 and 5
        rem(n, 3) == 0 && rem(n, 5) == 0 -> "FizzBuzz"

        # if number is multiple of 3
        rem(n, 3) == 0 -> "Fizz"

        # if number is multiple of 5
        rem(n, 5) == 0 -> "Buzz"

        true -> n
      end
    end
  end
end
