 
defmodule Fizzbuzz do
  @moduledoc """
  Documentation for `Fizzbuzz`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fizzbuzz.convert([3])
      ["Fizz"]

      iex> Fizzbuzz.convert([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
      ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16"]

  """

  def convert(l), do: Enum.map(l, &change/1)
  defp change(i) when rem(i, 15) == 0 and i > 0,  do: "FizzBuzz"
  defp change(i) when rem(i, 3) == 0 and i > 0, do: "Fizz"
  defp change(i) when rem(i, 5) == 0 and i > 0, do: "Buzz"
  defp change(i),  do:  "#{i}"


end



