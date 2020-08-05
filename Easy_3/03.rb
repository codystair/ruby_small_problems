puts "Please write word or multiple words:"
words = gets.chomp

characters = words.split(' ').join.size
puts "There are #{characters} characters in #{'"' + words + '"'}."
