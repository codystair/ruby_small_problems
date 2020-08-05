=begin
input: integer
output: integer
rules:
- will return double input unless input is a double number
- will return input if input is a double number
- a double number:
  - has even number of digits
  - left-side digits are same as right-side digits

examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

algorithm:
- check if input is double number
- if input is double number, return input
- otherwise, return input * 2
=end

def double?(num)
  digits = num.to_s
  return false if digits.size.odd?
  left = digits.slice(0..(digits.size / 2) - 1)
  right = digits.slice((digits.size / 2)..(digits.size - 1))
  left == right ? true : false
end

def twice(num)
  double?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
