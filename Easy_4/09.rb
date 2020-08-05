=begin
input: integer
output: string version of integer
rules:
- can't use conversion methods
- input will be positive integer

examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

algorithm:
- get digits of input integer
- convert each digit to string version via array or hash
- joing string digits together and return result

- create DIGITS hash with integers as keys and strings as values
- set digits to empty array
- push number / 1000 to digits
- push number % 1000 / 100 to digits
- push number % 100 / 10 to digits
- push number % 10 to digits
- iterate over digits, transforming each to DIGITS[current]
- join digits and return result
=end

DIGITS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(number)
  digits = []
  loop do
    number, digit = number.divmod(10)
    digits.unshift(digit)
    break if number == 0
  end
  digits.map { |num| DIGITS[num] }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
