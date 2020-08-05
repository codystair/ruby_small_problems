=begin
input: integer
output: integer
rules:
- input is number of digits
- output will return index in Fib sequence where input digits occurs
- Fibonacci sequence:
  - first two numbers are 1 and 1
  - each number after that is the sum of previous 2 numbers

examples:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

algorithm:
- set fib_seq to array with elements 1 and 1
- enter loop:
  - set new_fib to sum of last two items of fib_seq
  - push new_fib to fib_seq
  - iterate over fib_seq with index:
    - return index if current digits match input digits
=end

def find_fibonacci_index_by_length(number)
  fib_seq = [1, 1]
  loop do
    fib_seq << fib_seq.last(2).sum
    fib_seq.each_with_index do |fib, i|
      return i + 1 if fib.digits.size == number
    end
  end
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
