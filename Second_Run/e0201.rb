=begin 
input: random number between 20 and 200
output: printed string
rules:
- string will pring "Teddy is " + random number + " years old!"

algorithm:
- set numbers to array of numbers 20 to 200
- set age to random number from numbers
- print resulting string in proper format
=end

age = (20..200).to_a.sample

puts "Teddy is #{age} years old!"