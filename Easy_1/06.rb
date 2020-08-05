=begin
- input: string
- output: string
- rules:
  - input will contain >= 1 word
  - ouput will reverse letters of words with >= 5 letters
  - strings will only contain letters and spaces
  - spaces should be included only when >1 word is present

- examples:
puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'

- algorithm:
  - split string into array of words
  - iterate over words:
    - if word is >= 5 letters, reverse it
    - otherwise, leave it alone
  - join words array back into string and return it
=end

def reverse_words(input)
  words = input.split(' ')
  words.map! { |word| word.size >= 5 ? word.reverse : word }
  words.join(' ')
end

puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'