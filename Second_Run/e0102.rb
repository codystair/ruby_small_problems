=begin
input: integer
output: boolean
rules:
- returns true if number's ABSOLUTE value is odd
- cannot use odd? or even? methods

examples:
puts is_odd?(2)    == false
puts is_odd?(5)    == true
puts is_odd?(-17)  == true
puts is_odd?(-8)   == false
puts is_odd?(0)    == false
puts is_odd?(7)    == true

algroithm:
- convert number to its absolute value
- check to see if number % 2 == 0
=end

def is_odd?(num)
  num.abs % 2 != 0
end

p is_odd?(2)    == false
p is_odd?(5)    == true
p is_odd?(-17)  == true
p is_odd?(-8)   == false
p is_odd?(0)    == false
p is_odd?(7)    == true
