def prompt(message)
  puts "==> #{message}"
end

prompt "Please write word or multiple words:"
word = gets.chomp

characters = word.delete(' ').size

prompt "There are #{characters} characters in #{word}."
