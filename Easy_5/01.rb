=begin
input: string
output: integer
rules:
- output will be ASCII value of input
- ASCII value of input is the sum of ASCII values for each char
- may use #ord method to get ASCII value of each character

examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

algorithm:
- set characters to array of characters in str
- set sum to 0
- iterate over characters:
  - get ASCII value of current element
  - add that value to sum
- return sum
=end

# First Draft:
# def ascii_value(str)
#   characters = str.chars
#   sum = 0
#   characters.each { |char| sum += char.ord }
#   sum
# end

# Refactor:
def ascii_value(str)
  sum = 0
  str.chars.each { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
