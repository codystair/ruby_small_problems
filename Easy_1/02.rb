=begin
- input: integer
- output: boolean
- rules:
  - integer may be positive, negative, or 0
  - method will return true if integer is odd, false if not
  - an odd number is one that is not divisible evenly by 2

- examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

- algorithm:
  - check to see if integer % 2 == 0
  - if that is true, return false
  - if that is false, return true
=end

# First Draft:

# def is_odd?(number)
#   !(number % 2 == 0)
# end

# LS Solution
def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2) == false
puts is_odd?(5) == true
puts is_odd?(-17) == true
puts is_odd?(-8) == false
puts is_odd?(0) == false
puts is_odd?(7) == true

# Further Exploration:
# If you weren't certain whether % were the modulus or remainder
# operator, how would you rewrite #is_odd? so it worked regardless?

# def is_odd?(number)
#   number.abs % 2 == 1
# end
