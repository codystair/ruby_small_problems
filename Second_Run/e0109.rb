=begin
input: integer
output: integer
rules:
- output will be sum of digits of input
- input integer will be positive
- try not to use any looping constructs

examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

algorithm:
- set digits to array of digits in num
- return sum of digits array
=end

def sum(num)
  num.to_s.chars.map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
