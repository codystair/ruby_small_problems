=begin
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.

- input: integer
- output: array
- rules:
  - input will be a positive integer
  - output will me a list of digits in the integer

- examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

- algorithm:
  - set result to empty array
  - set digits to the string version of number split into array
  - iterate over digits
    - convert each string into an integer
    - push integer to result array
  - return result array
=end

def digit_list(number)
  result = []
  digits = number.to_s.chars
  digits.each { |dig| result << dig.to_i }
  result
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=begin
LS Brute Force Solution:

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

LS Idiomatic Ruby Solution:

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

which is Ruby shorthand for:

something.map { |char| char.to_i }
=end
