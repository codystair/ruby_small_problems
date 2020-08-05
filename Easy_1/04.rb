=begin
- input: array
- output: outputs the number of occurances of each element in array
- rules:
  - words in array are case-sensitive
  - print each element in "element +> occurances" format

example:
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

expected output:
car => 4
truck => 3
SUV => 1
motorcycle => 2

algorithm:
- set types to input array with duplicates removed
- iterate over types array:
  - print the type + '=>' + the number of times type occurs in input
=end

def count_occurrences(input)
  input.uniq.each { |el| puts "#{el} => #{input.count(el)}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
