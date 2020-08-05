puts "What is the length?"
length = gets.chomp.to_f

puts "What is the width?"
width = gets.chomp.to_f

square_meters = length * width
square_feet = (square_meters * 10.7639).round(2)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
