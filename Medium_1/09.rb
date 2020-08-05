=begin
input: integer
output: integer
rules:
- output will be nth number in fibonacci sequence

examples:
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075

algorithm:
- set fibs to array with 1 and 1
- set i to 2
- while i <= n:
  - set fibs[i] to fibs[i - 1] + fibs[i - 2]
  - increment i by 1
- return fins[n]
=end

def fibonacci(n)
  fibs = [1, 1]
  i = 2
  while i < n
    fibs[i] = fibs[i - 1] + fibs[i - 2]
    i += 1
  end
  fibs[n - 1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
