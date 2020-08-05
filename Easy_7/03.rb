=begin
input: string
output: sting
rules:
- output will return new string with words captialized
- words are any sequence of non-blank characters

examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

algorithm:
- set result to empty array
- set words to string split into words
- iterate over words:
  - capitalize each word
  - push capitalized word to result
- return result joined together as a string
=end

def word_cap(str)
  str.split(' ').map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
