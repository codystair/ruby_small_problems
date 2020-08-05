=begin
input: string
output: string
rules:
- same as 05.rb except non-alphabetic chars are NOT counted when
    alternating

examples:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

algorithm:
- set result to empty string
- set alphabet to range 'A'..'z'
- set i to 0
- set counter to 0
- while i < size of input string:
  - if current is in alphabet:
    - if counter is even, push uppercase version to result
    - otherwise, push lowercase version to result
    - increment i by 1
    - increment counter by 1
  - otherwise:
    - push current to result
    - increment i by 1
- return result
=end
ALPHABET = ('A'..'z')

def staggered_case(str)
  result = ''
  i = 0
  counter = 0
  while i < str.size
    if ALPHABET.cover?(str[i])
      if counter.even?
        result << str[i].upcase
        i += 1
        counter += 1
      else
        result << str[i].downcase
        i += 1
        counter += 1
      end
    else
      result << str[i]
      i += 1
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
