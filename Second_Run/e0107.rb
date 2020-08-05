=begin
input: integers
output: string
rules:
- output will be alternating 1s and zeros for the length of integer
- output always starts with 1

examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

algorithm:
- set result to empty string
- iterate over numbers from 0 to 1 less than num:
  - if current number is even, add a 1 to result
  - otherwise add 0 to result
- return result
=end

def stringy(num)
  result = ''
  num.times {} |n| n.even? ? result << '1' : result << '0' }
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
