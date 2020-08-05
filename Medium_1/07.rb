=begin
input: string
output: string
rules:
- returns same string with english numbers chagned to digits

examples:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

algorithm:
- set DIGITS to hash with string keys and digit string values
- iterate over words of strings:
  - transform each if key is found in DIGITS
=end
DIGITS = %w(zero one two three four five six seven eight nine)

def word_to_digit(string)
  DIGITS.each do |number|
    string.gsub!(number, DIGITS.index(number).to_s)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
