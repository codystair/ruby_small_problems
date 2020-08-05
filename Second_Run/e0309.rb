=begin
input: string
output: boolean
rules:
- returns true if string is a palindrome
- ignores case and non-alphanumeric characters

examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

algorithm:
- set test_str to downcased verion of str with non-alpha chars removed
- return palindrome?(test_str)
=end

def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(str)
  test_str = str.downcase.delete("^a-z0-9")
  palindrome?(test_str)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
