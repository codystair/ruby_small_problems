=begin
input: array and value
output: boolean
rules:
- will return true if value is in array
- can't use include? method

examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

algorithm:
- iterate over array:
  - return true if current value == input value
- return false
=end

def include?(arr, value)
  arr.each { |el| return true if el == value }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
