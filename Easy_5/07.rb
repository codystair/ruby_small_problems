

def word_sizes(str)
  words = str.split(' ').map { |word| word.delete("^A-Za-z") }
  output = {}
  counts = words.map { |word| word.length }
  counts.uniq.each do |count|
    output[count] = counts.count(count)
  end
  output
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
