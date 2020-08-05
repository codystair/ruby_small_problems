=begin
input: string
output: hash
rules:
  - input will have one or more space separated words
  - output heys will be word sizes
  - output values will be words the size of key in input

examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

algorithm:
- set words to input split into words
- set output to empty hash
- set counts to array of word lengths with duplicates removed
- iterate over counts
  - key will be current element
  - values will be the number occurances of element in words
=end

def word_sizes(str)
  words = str.split(' ')
  output = {}
  counts = words.map { |word| word.length }
  counts.uniq.each do |count|
    output[count] = counts.count(count)
  end
  output
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
