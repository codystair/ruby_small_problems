=begin
input: string
output: boolean
- will return true if input is palindrome
- palindrome is same backward as forward
- case-insensitive
- ignore non-alphanumeric characters

examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true
real_palindrome?("Madam, I'm Adam") == true
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

algorithm:
- downcase str and strip non-alphanumeric characters from it
- check to see if reversed str is == to str and return result
=end

#FIRST DRAFT:
# APLPHANUMERICS = ('a'..'z').to_a + (0..9).to_a

# def real_palindrome?(str)
#   str = str.downcase
#   str = str.chars.select { |char| APLPHANUMERICS.include?(char) }.join
#   str.reverse == str
# end

#Refactor:
def real_palindrome?(str)
  str.downcase!
  str.delete!("^a-z0-9")
  str.reverse == str
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
