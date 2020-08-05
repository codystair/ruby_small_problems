=begin
- input: string
- output: string
- rules: output will have words in reverse order

- examplest:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

- algorithm:
  - set result to empty array
  - set words to input split into words
  - iterate over words:
    - add each word to beginning of result array
  - join result back together seperated by spaces and return result
=end

def reverse_sentence(input)
  result = []
  words = input.split(' ')
  words.each { |word| result.unshift(word) }
  result.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
