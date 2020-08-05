=begin
input: 2 strings
output: printed strings
rules:
- will take user's age and their retirement age
- will calculate and display year, retirement year, and years until retirement

algorithm:
- prompt user for their age
- save input to age converted into an integer
- prompt user for what age they would to retire
- save input to retirement_age converted into an integer
- set year to current year
- set retirement_year to year + (retirement_age - age)
- set years_to_retirement to retirement_year - year
- print result strings
=end

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

year = Time.now.year
retirement_year = year + (retirement_age - age)
years_to_retirement = retirement_year - year

puts "It's #{year}.  You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"