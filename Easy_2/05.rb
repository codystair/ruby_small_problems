=begin
- Print string asking for name.
- Save entry as name.
- If name ends with an '!', print the uppercase string.
- Otherwise, print the lowercase string.
=end

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.chop.upcase}.  WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
