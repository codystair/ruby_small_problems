=begin
input: integer
output: integer
rules:
- will return negative version if positive and vice versa

examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0 

algorithm:
- return 0 - num
=end

def negative(num)
  num < 0 ? num : 0 - num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 
