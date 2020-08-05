=begin
input: array
output: array
rules:
- ouput will have every other element of input starting at index 0

examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

algorithm:
- set output to empty array
- set index to 0
- enter loop:
  - add input at current index to output
  - increment index by 2
  - break if index >= length of input
- return output
=end

def oddities(input)
  output = []
  input.each_with_index { |el, index| output << el if index.even? }
  output
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
