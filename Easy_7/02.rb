=begin
input: string
output: hash
rules: 
- hash will have 3 entries: lowercase, uppercase, and neither
- the values will be number of each category in string

examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

algorithm:
- set result to hash with appropriate keys and 0 as value
- iterate over string characters:
  - if current char is lowercase, add one to lowercase
  - if current char is uppercase, add one to uppdercase
  - otherwise, add one to neither
- return result
=end

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if ('A'..'z').cover?(char) == false
      result[:neither] += 1
    elsif char.swapcase == char.upcase
      result[:lowercase] += 1
    else
      result[:uppercase] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

