=begin
input: string
output: string
rules:
- will return string with each char's case swapped
- can't use swapcase

examples:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

algorithm:
- set result to empty string
- iterate over characters of string:
  - if character is lowercase, push uppercase version to result
  - otherwise, push lowercase version to result
- return result
=end

def swapcase(str)
  result = ''
  str.each_char do |char|
    if char.upcase == char
      result << char.downcase
    else
      result << char.upcase
    end
  end
  result
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
