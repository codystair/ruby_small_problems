=begin
- Print string asking for length of room in meters.
- Save entry as length.
- Print string asking for width of room in meters.
- Save entry as width.
- Set sq_meters to length * width.
- Set sq_feet to sq_meters * 10.7639
- Print result string in given format.
=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

sq_meters = length * width
sq_feet = sq_meters * 10.7639

puts "The area of the room is #{sq_meters} square meters (#{sq_feet.round(2)} square feet)."
