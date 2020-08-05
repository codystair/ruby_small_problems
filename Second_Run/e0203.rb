=begin
input: 2 strings
output: printed strings
rules:
- inputs are bill and time percentage
- will output tip amount and total bill

algorithm:
- prompt user for bill
- save input to bill and convert to integer
- prompt user for tip percentage
- save input converted to float / 100 to tip_percent
- set tip to bill * tip_percent
- set total to bill + tip
- print resulting string in proper format
=end

puts "What is the bill?"
bill = gets.chomp.to_i
puts "What is the tipe percentage?"
tip_percent = gets.chomp.to_f / 100

tip = bill * tip_percent
total = bill + tip

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"