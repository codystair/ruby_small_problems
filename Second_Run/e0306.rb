=begin
input: 2 arguments that evaluate to true or false
output: boolean
rules:
- returns true if EXACTLY 1 argument is truthy

examples:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

algorithm:
- if first is true && second is false || first is false && second is true, return true
- otherwise return false
=end

def xor?(first, second)
  (first == true && second == false) || (first == false && second == true)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
