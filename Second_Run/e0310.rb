=begin
input: integer
output: boolean
rules:
- returns true if number is palindromic

examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

algorithm:
- convert num to string
- return true if num string reversed == num string
- return false otherwise
=end

def palindromic_number?(num)
  num.to_s.reverse == num.to_s
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
