=begin
input: integer
output: integer
rules:
- output will be square of sums - the sum of squares
- numbers will be 1 to num

examples:
sum_square_difference(3) == 22
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

algorithm:
- get square of sums
  - set nums to array of 1 to num
  - set square_of_sum to sum of nums ** 2
- get sum of squares
  - set squares to nums with each number ** 2
  - set sum_of_squares to sum of squares array
- calculate and return difference
  - return square_of_sum - sum_of_squares
=end

def sum_square_difference(num)
  nums = (1..num).to_a
  square_of_sum = nums.sum ** 2
  sum_of_squares = nums.map { |num| num ** 2}.sum
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
