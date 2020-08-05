=begin
- Print string to ask for age.
- Save entry as age.
- Print string to ask for retirement age.
- Save entry as retirement_age.
- Set current_year to whatever the current year is.
- Set years_to_retirement to retirement_age - age.
- Set retirement_year to current_year + years_to_retirement.
- Print two remaining result strings.
=end

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

current_year = 2019
years_to_retirement = retirement_age - age
retirement_year = current_year + years_to_retirement

puts "It's #{current_year}.  You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"
