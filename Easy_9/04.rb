=begin
input: integer
output: array
rules:
- output will contain all integers from 1 up to and including num
- input will always be > 0

examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

algorithm:
- set numbers to empty array
- iterate from 1 to number and push each to numbers
- return numbers
=end

def sequence(num)
  (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
