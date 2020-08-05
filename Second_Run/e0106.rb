=begin
input: string
output: string
rules:
- output will reverse characters in any string of 5+ letters

examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

algorithm:
- set words to string split into array of words
- set result to empty array
- iterate over words:
  - if size of word is >= 5, push reversed word to result
  - otherwise push word to result
- return result joined to string
=end

def reverse_words(str)
  words = str.split(' ')
  result = []
  words.each do |word|
    if word.size >= 5
      result << word.reverse
    else
      result << word
    end
  end
  result.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
