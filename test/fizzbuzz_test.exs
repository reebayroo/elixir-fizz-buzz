defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "if multiple of 3" do
    assert Fizzbuzz.check(3) == "Fizz"
  end
  test "if multiple of 5" do
      assert Fizzbuzz.check(5) == "Buzz"
  end
  test "if multiple of 5 and 3" do
        assert Fizzbuzz.check(15) == "FizzBuzz"
  end
  test "everything else  " do
    assert Fizzbuzz.check(0) == "0"
    assert Fizzbuzz.check(1) == "1"
    assert Fizzbuzz.check(4) == "4"
  end

  test "has the convert function that will receive a list and return it converted " do
    expected = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16"]
    assert  Fizzbuzz.convert(1..16) == expected
  end
  

end
