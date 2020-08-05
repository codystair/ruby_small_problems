=begin
input: integer
output: integer
rules:
- output will be nth (input) fibonacci number in sequence
- use recursion

examples:
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

algorithm:
- set numbers to empty array

=end

def fibonacci(num)
  if num < 2
    num
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
