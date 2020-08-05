=begin
- Set a collection of numbers from 20 to 200.
- Set age to a random number from that range.
- Print the string with the random age in the given format.
=end

# my solution:
# age = (20..200).to_a.sample
# puts "Teddy is #{age} years old!"

# LS solution:
# age = rand(20..200)
# puts "Teddy is #{age} years old!"

# Further Exploration:
puts "What's your name?"
name = gets.chomp
name = 'Teddy' if name == ''

age = rand(20..200)
puts "#{name} is #{age} years old!"
