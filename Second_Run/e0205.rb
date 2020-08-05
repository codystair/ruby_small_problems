=begin
input: string
output: printed string
rules:
- greet user with their name
- if user ends name in '!', print special string

algorithm:
- prompt user for their name
- save input to name
- if last char of name is '!', print caps string without '!'
- otherwise, print normal greeting
=end

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name[0..-2].upcase}.  WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
