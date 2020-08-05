=begin
- input: array of integers
- output: integer
- rules:
  - output will be average of integers in input
  - input will never be empty
  - input will always contain only positive integers

- examples:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

- algorithm:
  - set sum to 0
  - iterate over input, adding each integer to sum
  - return sum / length of input
=end

def average(numbers)
  numbers.sum / numbers.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
