=begin
input: 2 arrays
output: array
rules:
- output will contain all values of input array
- output will not have any duplicate values

examples:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

algorithm:
- set result to empty array
- iterate over arrays and push elements to result
- delete duplicate elements from result
=end

# First Attempt:
# def merge(arr1, arr2)
#   result = []
#   arr1.each { |el| result << el }
#   arr2.each { |el| result << el }
#   result.uniq
# end

# Refactor:
def merge(arr1, arr2)
  [arr1, arr2].flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
