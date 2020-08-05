=begin
input: array of integers
output: same array
rules:
- output elements have running total of original array

examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

algorithm:
- set total to 0
- set output to empty array
- set counter to 0
- set current_el to input[counter]
- while counter < length of input
  - add current element value to total
  - add total to output
  - increment counter
- return output
=end

def running_total(arr)
  total = 0
  arr.map { |num| total += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
