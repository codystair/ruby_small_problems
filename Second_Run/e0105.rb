=begin
input: string
ouput: new string
rules:
- output will contain input string with the words in reverse order

examples:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

algorithm:
- set words to str split into array of words
- set result to empty array
- iterate over words:
  - unshift each word to result
- return result joined to a string
=end

def reverse_sentence(str)
  words = str.split(' ')
  result = []
  words.each do |word|
    result.unshift(word)
  end
  result.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
