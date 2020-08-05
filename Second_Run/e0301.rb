=begin
set numbers to empty array
prompt user for 5 numbers, pushing each converted to integer to numbers
prompt user for last number
save it to last and convert to integer
print resulting string
=end

numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last = gets.chomp.to_i

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end
