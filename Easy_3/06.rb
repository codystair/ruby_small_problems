=begin
input: two arguments that evaluate to true or false
output: boolean
rules:
- returns true if EXACTLY one argument is true, false otherwise

examples:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

algorithm:
- if arg1 and arg2 are true
  - return false
- if arg1 and arg2 are false
  - return false
- else
  - return true
=end

def xor?(arg1, arg2)
  if arg1 == true && arg2 == true
    false
  elsif arg1 == false && arg2 == false
    false
  else
    true
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
