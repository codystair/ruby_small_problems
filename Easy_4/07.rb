=begin
input: string of digits
output: integer version of input
rules:
- can't use conversion methods
- don't worry about leading + or = signs
- don't worry about invalid characters
- assume all characters are numeric

model:
- scan string backwards, retrieving each str digit
- convert str digit to integer
- add product of multiplier and integer digit to total
- return total as result

examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

algorithm:
- set DIGITS to hash with str digit as key and integer as value
- set counter to str's size - 1
- set multiplier to 1
- set result to 0
- set digit to str[counter]
- enter loop
  - result = (result + DIGITS[digit]) * multiplier
  - counter += 1
  - multiplier *= 10
  - break loop if counter < 0
- return result
=end

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3, 
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(str)
  result = 0
  counter = str.size - 1
  multiplier = 1 

  loop do
    digit = str[counter]
    result += DIGITS[digit] * multiplier
    counter -= 1
    multiplier *= 10
    break if counter < 0
  end

  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
