=begin
input: string
output: boolean
rules:
- returns true if string is palindrome
- a palindrome reads the same backward as forward
- case matters

examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

algorithm:
- return true if reversed string == string
- return false otherwise
=end

def palindrome?(str)
  str.reverse == str
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
