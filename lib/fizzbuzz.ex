defmodule Fizzbuzz do
  @moduledoc """
  Documentation for Fizzbuzz.
  """

  @doc """
  Write an Elixir application that outputs FizBuzz starting from 1 every 2 seconds

  For each multiple of 3, print "Fizz" instead of the number. 
  For each multiple of 5, print "Buzz" instead of the number. 
  For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.

  ## Examples

      iex> Fizzbuzz.multiples(20)
      1
      2
      Fizz
      4
      buzz
      Fizz
      7
      8
      Fizz
      buzz
      11
      Fizz
      13
      14
      Fizzbuzz
      16
      17
      Fizz
      19
      buzz

  """
  def multiples(n) do
    # for number n in range 1 to number n, for every two seconds print return output
    Enum.each(1..n, fn n ->
      :timer.sleep(2000);
      cond do
        # if number is both multiple of 3 and 5
        rem(n, 3) == 0 && rem(n, 5) == 0 -> IO.puts "Fizzbuzz"
        # if number is multiple of 3
        rem(n, 3) == 0 -> IO.puts "Fizz"
        # if number is multiple of 5
        rem(n, 5) == 0 -> IO.puts "buzz"
        # if number is not either multiple of 3 or 5 then return the number
        true -> IO.puts n
      end
    end)
  end
end