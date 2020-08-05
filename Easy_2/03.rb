=begin
- Print string asking for amount of bill.
- Save entry as bill.
- Print string asking for tip percentage.
- Save entry as tip_percentage.
- Set tip = bill * (tip_percentage / 100)
- Set total = bill + tip
- Print tip string.
- Print total string.
=end

puts "What is the bill?"
bill = gets.to_f

puts "What is the time percentage?"
tip_percentage = gets.to_f / 100

tip = bill * tip_percentage
total = bill + tip

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"
