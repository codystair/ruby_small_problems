=begin
input: array
output: array
rules:
- output array will contain 2 nested arrays
- nested arrays will contain each half of input array
- if the # of elements in input is odd, extra will go to first output

examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

algorithm:
- set result to empty array with two empty arrays
- set first to result[0]
- set second to result[1]
- set i to 0
- while i < size of input array:
  - if i > size of input / 2
    - push input at i to second
  - otherwise
    - push input at i to first
  - increment i by 1
- return result
=end

# First Go:
# def halvsies(arr)
#   result = [[], []]
#   first = result[0]
#   second = result[1]
#   i = 0
#   while i < arr.size
#     if i > (arr.size - 1) / 2
#       second << arr[i]
#       i += 1
#     else
#       first << arr[i]
#       i += 1
#     end
#   end
#   result
# end

# Refactor:
def halvsies(arr)
  result = [[], []]
  arr.each_with_index do |el, i|
    if i >= arr.size / 2.0
      result[1] << el
    else
      result[0] << el
    end
  end
  result
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
