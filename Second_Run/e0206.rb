=begin
input: range of integers
output: printed strings of odd numbers
rules:
- range will be numbers 1 to 99 inclusive
- numbers will all be printed on seperate lines

algorithm:
- set numbers to range 1 to 99
- iterate over numbers:
  - print number
=end

(1..99).each { |num| puts num if num.odd? }