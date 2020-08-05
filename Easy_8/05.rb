=begin
input: string
output: array
rules:
- output will contain substrings that are palindromatic
- palindromes are case-sensitive

examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

algorithm:
- set palindromes to empty array
- get subs by calling substrings method on input
- iterate over substrings:
  - if sub is same reversed as sub, push to palindromes
- return palindromes
=end

def substrings_at_start(str)
  subs = []
  i = 0
  while i < str.size
    subs << str.slice(0..i)
    i += 1
  end
  subs
end

def substrings(str)
  subs = []
  start = 0
  until start == str.size
    subs << substrings_at_start(str[start..(str.size - 1)])
    start += 1
  end
  subs.flatten
end

def palindromes(str)
  substrings(str).select { |sub| sub.size > 1 && sub.reverse == sub }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
