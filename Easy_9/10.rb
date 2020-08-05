=begin
input: array of arrays
output: array
rules:
- each input array contains a fruit and an integer
- return array is flat and has each fruit integer number of times

examples:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

algorithm:
- set result to empty array
- iterate over array:
  - integer number of times add fruit to result
- return result
=end

def buy_fruit(pairs)
  result = []
  pairs.each do |pair|
    pair[1].times { result << pair[0] }
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
