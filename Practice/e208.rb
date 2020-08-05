puts "Please enter an integer greater than 0:"
number = gets.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

sum = (1..number).to_a.sum
product = 1
(2..number).to_a.each { |num| product *= num }

if choice == 's'
  puts "The sume of the integers between 1 and #{number} is #{sum}."
else
  puts "The procut of the integers between 1 and #{number} is #{product}."
end
