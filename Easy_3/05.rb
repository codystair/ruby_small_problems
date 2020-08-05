=begin
input: integer
output: integer
rules:
- output will be the square of the input
- the square of a number is the number multiplied by itself
- must use multiply method from 04.rb

examples:
square(5) == 25
square(-8) == 64

algorithm:
- call the multiply method with input as arguments
=end

#SOLUTION
def multiply(num1, num2)
  num1 * num2
end

# def square(num)
#   multiply(num, num)
# end

# p square(5) == 25
# p square(-8) == 64

#FURTHER EXPLORATION
def expotential(num, power)
  result = 1
  loop do
    result = multiply(result, num)
    power -= 1
    break if power == 0
  end
  result
end

p expotential(2, 3) == 8
p expotential(4, 5) == 1024
