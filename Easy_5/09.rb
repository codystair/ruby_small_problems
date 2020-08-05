=begin
input: string
output: string
rules:
- output collapses all consecutive chars into 1 char
- cannot use String#squeeze or String#squeeze!

examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

algorithm:
- set characters to str split into an array of characters
- set result to empty string
- iterate over characters:
  - if characters[index + 1] != current character, add to result
- return result
=end

def crunch(str)
  characters = str.chars
  result = ''
  characters.each_with_index do |char, i|
    result << char if characters[i + 1] != char
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
