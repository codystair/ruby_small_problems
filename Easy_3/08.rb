=begin
input: string
output: boolean
rules:
- will return true if input is a palindrome, false otherwise
- a palindrome reads the same backward as forward
- case and punctuation matter

examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

algorithm:
- set characters to the input split into an array of characters
- set reverse_chars to an empty array
- iterate over characters
  - add each element to the beginning of reverse chars
- check to see if characters == reverse_chars and return result
=end

# HARD VERSION
# def palindrome?(str)
#   characters = str.chars
#   reverse_chars = []
#   characters.each { |char| reverse_chars.unshift(char) }
#   characters.join == reverse_chars.join
# end

# RUBYISH VERSION
def palindrome?(str)
  str.reverse == str
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
