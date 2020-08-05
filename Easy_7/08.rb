=begin
input: 2 arrays
output: array
rules:
- output will return array of products of each input pairs
- inputs will be same size

examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

algorithm:
- set result to empty array
- iterate over arr1 with index:
  - push current * arr2[i] to result
- return result
=end

def multiply_list(arr1, arr2)
  result = []
  arr1.each_with_index { |el, i| result << el * arr2[i] }
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
