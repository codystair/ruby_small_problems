=begin
input: string
output: string
rules:
- will return string with each character doubled

examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

algorithm:
- set result to empty string
- iterate over string:
  - push current char to result twice
- return result
=end


def repeater(str)
  result = ''
  str.each_char { |char| result << char << char }
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
