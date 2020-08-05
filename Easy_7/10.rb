=begin
input: string
output: string
rules:
- returns next to last word in string
- string will contain at least 2 words

examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

algorithm:
- set words to str split into array of words
- return words at index -2
=end

def penultimate(str)
  str.split(' ')[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
