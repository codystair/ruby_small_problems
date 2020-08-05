=begin
input: integer
output: integer
rules:
- output is sum of all multiples of 3 and 5 in input
- sum will include input
- input will be > 1

examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

algorithm:
- set multiples to empty array
- iterate through numbers 1 to number
  - if current number is evenly divisible by 3 or 5, add it to multiples
- return sum of multiples
=end

def multisum(number)
  multiples = []
  1.upto(number) { |num| multiples << num if num % 3 == 0 || num % 5 == 0 }
  multiples.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
