=begin
input: 2 arrays
output: array
rules:
- returns array with product of every pair of numbers
- output array will be sorted in increasing order
- neither input is empty

examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

algorithm:
- get array of nested products of pairs
- flatten array
- sort and return array
=end

def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each_with_index do |el_1, idx_1|
    arr2.each_with_index do |el_2, idx_2|
      result << el_1 * el_2
    end
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
