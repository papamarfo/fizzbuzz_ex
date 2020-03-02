defmodule Fizzbuzz do
  @moduledoc """
  Documentation for Fizzbuzz.
  """

  @doc """
  Write an Elixir application that outputs Fizzbuzz starting from 1 every 2 seconds

  For each multiple of 3, print "Fizz" instead of the number. 
  For each multiple of 5, print "buzz" instead of the number. 
  For numbers which are multiples of both 3 and 5, print "Fizzbuzz" instead of the number.

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
    Enum.each(1..n, fn n ->
      :timer.sleep(2000);
      cond do
        rem(n, 3) == 0 && rem(n, 5) == 0 -> IO.puts "Fizzbuzz"
        rem(n, 3) == 0 -> IO.puts "Fizz"
        rem(n, 5) == 0 -> IO.puts "buzz"
        true -> IO.puts n
      end
    end)
  end
end