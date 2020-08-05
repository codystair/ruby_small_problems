=begin
input: string
output: array
rules:
- will return all substrings of array
- use substrings_at_start method from previous exercise

examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

algorithm:
- set subs to empty array
- set start to 0
- until start == string size
  - call substrings_at_start with 0 to end of str
  - push resulting array to subs
  - increment start by 1
- return subs flattened into 1d array
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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
