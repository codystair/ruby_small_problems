=begin
input: array of integers
output: print
rules:
- output will return result
- result will be all numbers in array multiplied together / # of nums
- result will be rounded to 3 decimal places

examples:
show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667

algorithm:
- set result to numbers multiplied together / size of array
- print result with result rounded to 3 places
=end

def show_multiplicative_average(numbers)
  result = numbers.inject(:*) / (numbers.size).to_f
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
