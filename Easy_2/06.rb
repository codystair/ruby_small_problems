# (1..99).each { |num| puts num if num % 2 != 0 }

# counter = 1
# loop do
#   puts counter if counter % 2 != 0
#   counter += 1
#   break if counter > 99
# end

#1.upto(99) { |num| puts num if num.odd? }

puts (1..99).to_a.select{ |num| num.odd? }
