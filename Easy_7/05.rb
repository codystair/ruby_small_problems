=begin
input: string
output: string
rules:
- output will return new string
- output will alternate lower and upper case characters
- it will start with uppercase for first char
- non letters count as characters when alternating

examples:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

algorithm:
- set result to empty string
- iterate over characters of string with index:
  - if index is even, push uppercase version of str to result
  - otherwise, push lowercase version of str to result
- return result
=end

def staggered_case(str)
  result = ''
  str.each_char.with_index do |char, i|
    if i.even?
      result << char.upcase
    else
      result << char.downcase
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
