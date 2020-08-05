=begin
input: 2 strings
output: printed string

rules:
- output will include area of room in sq feet and sq meters

algorithm:
- prompt user for length of room in meters
- save input as length
- prompt user for width in meters
- save input as width
- set area to length * width
- set area_ft to area * 10.7639

=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = length * width
area_ft = area * 10.7639

puts "The area of the room is #{area} square meters (#{format("%.2f", area_ft)} square feet)."
