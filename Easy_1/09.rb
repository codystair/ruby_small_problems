=begin
- input: integer
- output: integer
- rules:
  - input will be a positive integer
  - output will be sum of input's digits

examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

algorithm:
- set digits to input converted to a string and split into chars
- change each char in digits array to integer
- set sum to 0
- iterate over digits, adding each element to sum
- return sum
=end

def sum(number)
  number.to_s.chars.map { |dig| dig.to_i }.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
