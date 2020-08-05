=begin
input: string
output: string
rules:
- input is first and last name
- will return 'last, first'

examples:
swap_name('Joe Roberts') == 'Roberts, Joe'

algorithm:
- split string into array of 2 words: first and last
- return last + ', ' + first
=end

def swap_name(str)
  first, last = str.split[0], str.split[1]
  "#{last}, #{first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
