=begin
- prompt user for integer
- save input to num converted to integer
- prompt user for operation
- save input as operation
- if operation == 's'
  - return sum of numbers 1 to num
- if operation == 'p'
  - return product of numbers 1 to num
=end

puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts "Enter 's' to comput the sum, 'p' to compute the product."
operation = gets.chomp

sum = 0
product = 1
(1..num).each do |n|
  sum += n
  product *= n
end

if operation == 's'
  puts "The sum of the integers between 1 and #{num} is #{sum}."
else
  puts "The product of the integers between 1 and #{num} is #{product}."
end
