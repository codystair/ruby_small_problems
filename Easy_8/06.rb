=begin
input: 2 integers
output: print numbers
rules:
- inputs are starting number and ending number
- print out all numbers between and including start and end
- if number is divisible by 3, print Fizz instead
- if number is divisible by 3, print Buzz instead
- if number is divisible by 3 and 5, print FizzBuzz instead

examples:
fizzbuzz(1, 15)

algorithm:
- set counter to start
- while counter <= end:
  - if counter % 3 == 0 && counter % 5 == 0, print 'FizzBuzz'
  - if counter % 3 == 0, print 'Fizz'
  - if counter % 5 == 0, print 'Buzz'
  - else print counter
=end

def fizzbuzz(start, ending)
  while start <= ending
    if start % 3 == 0 && start % 5 == 0
      puts 'FizzBuzz'
      start += 1
    elsif start % 3 == 0
      puts 'Fizz'
      start += 1
    elsif start % 5 == 0
      puts 'Buzz'
      start += 1
    else
      puts start
      start += 1
    end
  end
end

fizzbuzz(1, 15)
