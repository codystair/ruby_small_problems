=begin
input: string
output: array
rules:
- will return array of all substrings in array
- substrings will always begin with first character of string
- subs should be in order from shortest to longest

examples:
substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

algorithm:
- set subs to empty array
- set i to 0
- while i < size of string:
  - slice string from index zero to current i
  - push sliced string to subs
  - increment i by 1
- return subs
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

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
