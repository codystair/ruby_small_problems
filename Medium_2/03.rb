=begin
input: string
output: hash
rules:
- output will have lowercase, uppercase, and neither as keys
- values will be percentage of string for each type of char

examples:
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

algorithm:
- set result to hash with appropriate keys and values as 0
- iterate over string:
  - increment appropriate key by 1 for current char
- iterate over hash:
  - change value to value / size of string
=end

def letter_percentages(str)
  result = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  str.each_char do |char|
    if char.swapcase == char
      result[:neither] += 1
    elsif char.downcase == char
      result[:lowercase] += 1
    else
      result[:uppercase] += 1
    end
  end

  result.keys.each { |k| result[k] = (result[k] / str.size.to_f ) * 100 }
  result
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
