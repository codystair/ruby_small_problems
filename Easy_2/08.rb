=begin
- input: an integer > 0
- output: sum or product of all numbers from 1 to input integer
- examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

- algorithm:
- Print string asking for integer > 0
- Save entry as number and convert to integer
- Print string asking to compute sum or product
- Save entry as operation
- Calculate sum or product:
  - For sum:
    - Set sum = 0
    - Set counter == number
    - Enter loop:
      - Add counter to sum
      - Decrement counter by 1
      - break if counter == 0
  - For product:
    - Set product = 1
    - Set counter == number
    - Enter loop:
      - Set product = product * counter
      - Decrement counter by 1
      - break if counter == 0
- Print string with appropriate result
=end

def sum(number)
  sum = 0

  counter = number
  loop do
    sum += counter
    counter -= 1
    break if counter == 0
  end

  sum
end

def product(number)
  product = 1
  
  counter = number
  loop do
    product *= counter
    counter -= 1
    break if counter == 0
  end

  product
end
loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.to_i

  puts ">> Enter 's' to compute sum, 'p' to compute prodcut."
  choice = gets.chomp

  sum = sum(number)
  product = product(number)

  if choice == 's'
    puts "The sum of the integers beteween 1 and #{number} is #{sum}."
    break
  elsif choice == 'p'
    puts "The product of the integers between 1 and #{number} is #{product}."
    break
  else
    puts "That is not a valid choice.  Try again!"
  end
end
