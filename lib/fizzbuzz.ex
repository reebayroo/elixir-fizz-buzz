defmodule User do
  defstruct age: 0
end


defmodule Fizzbuzz do
  @moduledoc """
  Documentation for `Fizzbuzz`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fizzbuzz.check(3)
      "Fizz"

      iex> Fizzbuzz.convert([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
      ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16"]

  """
  def check(i) when rem(i, 15) == 0 and i > 0,  do: "FizzBuzz"
  def check(i) when rem(i, 3) == 0 and i > 0, do: "Fizz"
  def check(i) when rem(i, 5) == 0 and i > 0, do: "Buzz"
  def check(i),  do:  "#{i}"


  def convert(l), do: Enum.map(l, &check/1)
end



