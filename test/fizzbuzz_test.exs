defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "if multiple of 3" do
    assert  Fizzbuzz.convert([3]) == ["Fizz"]
    assert  Fizzbuzz.convert([6]) == ["Fizz"]
    
  end
  test "if multiple of 5" do
    assert  Fizzbuzz.convert([5]) == ["Buzz"]
    assert  Fizzbuzz.convert([10]) == ["Buzz"]
  end
  test "if multiple of 5 and 3" do
    assert Fizzbuzz.convert([15]) == ["FizzBuzz"]
    assert Fizzbuzz.convert([30]) == ["FizzBuzz"]
    assert Fizzbuzz.convert([45]) == ["FizzBuzz"]
  end
  test "everything else returns value as string " do
    assert Fizzbuzz.convert([0]) == ["0"]
    assert Fizzbuzz.convert([1]) == ["1"]
    assert Fizzbuzz.convert([4]) == ["4"]
  end

  test "pass a list and returns modified " do
    expected = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16"]
    assert  Fizzbuzz.convert(1..16) == expected
  end
  

end
