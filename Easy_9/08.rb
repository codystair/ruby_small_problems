=begin
input: 2 integers
output: array of integers
rules:
- first integer is count, second is first num of sequence
- returned array will be size of count
- values of array will be multiples of first
- returns empty array if count is 0

examples:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

algorithm:
- set result to empty array
- set current to first
- while result size < count:
  - push current to result
  - increment current by first
- return result
=end

def sequence(count, first)
  result = []
  current = first
  while result.size < count
    result << current
    current += first
  end
  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
