text = File.read('01.txt')

def longest_sentence(string)
  sentences = string.split(/[.?!]/)
  longest = sentences.max_by { |sen| sen.split.size }
  size = longest.split.size

  puts longest
  puts "Which contains #{size} words."
end

longest_sentence(text)
