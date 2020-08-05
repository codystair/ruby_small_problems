=begin
input: integer
output: string
rules:
- input may be positive, negatve, or 0
- output should reflect positive or negative with + or -

examples:
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

algorithm:
- if number >= 0
  - set result to integer_to_string(number)
- else
  - set result to integer_to_string(0 - number)
- if number == 0
  - return result
- if number > 0
  - return '+' + result
- else 
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

def signed_integer_to_string(number)
  if number < 0
    result = integer_to_string(0 - number)
  else
    result = integer_to_string(number)
  end

  if number > 0
    '+' + result
  elsif number < 0
    '-' + result
  else
    result
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
