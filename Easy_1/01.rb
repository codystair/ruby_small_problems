=begin
- input: a string and a positive integer
- output: print the string the number of times as integer

- example:
repeat('Hello', 3)

- algorithm:
  - set counter to 0
  - enter loop
    - print string
    - increment counter by 1
    - break if counter == number
=end

# First Draft:
# def repeat(string, num)
#   counter = 0
#   loop do
#     puts string
#     counter += 1
#   break if counter == num
#   end
# end

# Refactor:
def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('Hello', 3)
