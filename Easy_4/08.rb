=begin
input: string
output: integer
- String may or may not start with - or +.
- If string starts with -, method should return negative integer.

examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

algorithm:
- check to see if str starts with - or +
- if it does, delete it from str
- set result to return of string_to_integer(str)
- if str starts with -, return 0 - result
- otherwise return result
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(str)
  if str[0] == '-' || str[0] == '+'
    digits = str.slice(1..-1)
  else
    digits = str
  end

  result = string_to_integer(digits)
  str.start_with?('-') ? 0 - result : result
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
