=begin
input: string
output: string
rules:
- will return the middle character of string
- if string is even length, return middle 2 characters

examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

algorithm:
- if string size is odd, return string index at size / 2
- if string size is even, return:
  - string index at (size / 2) - 1 and
  - string index at size / 2
=end

def center_of(str)
  if str.size.odd?
    str[str.size / 2]
  else
    left, right = str[(str.size / 2) - 1], str[str.size / 2]
    left + right
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
