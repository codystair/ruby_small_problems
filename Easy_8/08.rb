=begin
input: string
output: string
rules:
- output will double every consonant character

examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

algorithm:
- set result to empty string
- set consonants to array of consonants
- iterate over chars of string:
  - if char is in consonants, add it twice to result
  - otherwise add char once to result
- return result
=end

def double_consonants(str)
  vowels = 'AEOIUaeoiu'
  consonants = ('A'..'z').to_a.delete_if { |char| vowels.include?(char) }
  result = ''
  str.each_char do |char|
    if consonants.include?(char)
      result << char << char
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
