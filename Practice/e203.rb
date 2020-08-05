puts "What is the bill?"
bill = gets.to_f.round(2)

puts "What is the tip percentage?"
tip_percent = gets.to_f.round(2) / 100

tip = bill * tip_percent

puts "The tip is $#{tip}"
puts "The total is $#{tip + bill}"