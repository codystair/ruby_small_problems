=begin
input: string
output: string
rules:
- input is seperated by spaces
- output is input string with first and last letters of each word swapped
- every word contains at least one letter
- every string will contain at least one word
- strings contain nothing but words and spaces

examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

algorithm:
- set words to array of words in string
- iterate over the array of words
  - set first to word[0]
  - set last to word[-1]
  - delete first and last letters in word
  - add last to start of word
  - add first to end of word
- join words back together as string with ' ' delimiter and return
=end

def swap(string)
  words = string.split(' ')
  words.map! do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
