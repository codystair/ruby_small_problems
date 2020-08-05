=begin
input: string
output: boolean
rules:
- returns true if all alphabetic chars in input are uppercase
- ignore non-alphabetic chars

examples:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

algorithm:
- filter string for only alphabetic characters
- check whether alphabetic characters are uppercase, returning false if not
- return true at end
=end

def uppercase?(str)
  str.delete('^A-z').each_char do |char|
    return false if char.swapcase == char.upcase
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
