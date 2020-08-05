=begin
input: string
output: boolean
rules:
- returns true if parentheses are properly balanced
- balanced means there as as many '('s as ')'s

examples:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

algorithm:
- 
=end

def balanced?(str)
  return true if str.count('()') == 0
  return false if str.delete('^()')[0] == ')'
  return false if str.delete('^()')[-1] == '('
  str.count('(') == str.count(')')
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
