=begin
input: integer
output: integer
rules:
- will output square of input
- use `multiply` method from previous exercise

examples:
square(5) == 25
square(-8) == 64

algorithm:
- return multiply(num, num)
=end

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
