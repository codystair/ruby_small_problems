puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

years_to_retirement = retirement_age - age
current_year = 2018
retirement_year = current_year + years_to_retirement

puts "It's #{current_year}.  You will retire in #{retirement_year}."
puts "You only have #{years_to_retirement} years of work to go!"