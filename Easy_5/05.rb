=begin
input: string
output: string
rules:
- input will contain letter, non-alphabetic characters, and spaces
- output will replace non-alphabetic characters with spaces
- output will NOT have consecutive spaces
- input will be lowercase

examples:
cleanup("---what's my +*& line?") == ' what s my line '

algorithm:
- replace non-alphabetic characters with spaces
  - split string into array of characters
  - iterate over characters
    - if character is non-alphabetic, replace with space
    - otherwise, leave character as is
- get rid of extra spaces
  - iterate over characters
    - if current character is a space AND so is the next, delete it
- join array together into string and return
=end

def cleanup(string)
  characters = string.chars
  characters.map! { |char|('a'..'z').include?(char) ? char : ' ' }
  characters.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
