=begin
input: integer
output: integer
rules: 
- returns next featured number after input
- a featured number is a multiple of 7 and has no duplicate digits
- issue error message if there is no next featured number

examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

algorithm:
- make method featured_num?
  - set digits to number split into an array of string digits
  - if digits == digits.uniq && number % 7 == 0
    - return true
  - otherwise return false
- set input to num
- enter loop:
  - set num to num + 1
  - break if featured_num?(num) is true
- return num
=end
require 'pry'

def featured_num?(number)
  return false if number.even?
  digits = number.to_s.chars
  (digits.uniq == digits) && (number % 7 == 0)
end

def featured(num)
  if num >= 9_876_543_210
    puts "There is no possible number that fulfills hose requirements."
  current = num + 1
  until featured_num?(current)
    current += 1
  end
  current
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
