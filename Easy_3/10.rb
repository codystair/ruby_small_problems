=begin
input: integer
output: boolean
rules:
- returns true if input is palindromic, false otherwise
- a palindindromic number reads the same forwards as backsards

examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

algorithm:
- set number_str to integer converted to string
- check whether number_str reversed is same as number_str
- return result
=end

def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
