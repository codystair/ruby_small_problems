=begin
input: array of integers
output: integer
rules:
- will return average of numbers in array
- array will never be empty
- array will always contain positive numbers

examples:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

algorithm:
- set sum to the sum of the numbers in the array
- return sum / size of array
=end

def average(numbers)
  numbers.sum / numbers.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
