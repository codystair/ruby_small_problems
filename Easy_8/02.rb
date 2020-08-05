=begin
input: strings from user
output: prints strings
rules:
- ask user for a noun, verb, adverb, and an adjectvie

examples:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

algorithm:
- prompt user for noun, verb, adverb, and adjective
- save responses to variables
- print result
=end

puts 'Enter a noun:'
noun = gets.chomp
puts 'Enter a verb:'
verb = gets.chomp
puts 'Enter an adjective:'
adjective = gets.chomp
puts 'Enter an adverb:'
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}?  That's hilarious!"
