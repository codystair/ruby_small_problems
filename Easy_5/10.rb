=begin
input: string
output: prints box with input within it
rules:
- inputting an empty string will result in this:
- input will always fit in terminal window

examples:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

algorithm:
- set length to str.length
- print '+-' + ('-' * length) + '-='
- print '| ' + (' ' * length) + ' |'
- print '| ' + str + ' |'
- print '| ' + (' ' * length) + ' |'
- print '+-' + ('-' * length) + '-='

=end

def print_in_box(str)
  length = str.length
  puts '+-' + ('-' * length) + '-+'
  puts '| ' + (' ' * length) + ' |'
  puts '| ' + str + ' |'
  puts '| ' + (' ' * length) + ' |'
  puts '+-' + ('-' * length) + '-+'
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
