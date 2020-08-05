=begin
input: 2 arrays
output: array
rules:
- will return new array
- output will contain all elements in inputs alternating
- inputs will be same size

examples:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

algorithm: 
- set result to empty array
- iterate over arr1 with index:
  - push current element to result
  - push arr2 element at current i to result
- return result
=end

def interleave(arr1, arr2)
  result = []
  arr1.each_with_index do |el, i|
    result << el
    result << arr2[i]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
