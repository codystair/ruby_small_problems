=begin
input: array
output: array
rules:
- returns array with every other value in input starting at index 0
- empty array returns empty array

examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

algorithm:
- set result to empty array
- iterate over array with access to index:
  - push element to result if index is even
- return result
=end

def oddities(arr)
  result = []
  arr.each_with_index do |el, i|
    result << el if i.even?
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
