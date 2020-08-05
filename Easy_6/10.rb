=begin
input: integer
output: print triangle of * characters
rules:
- input integer will be positive
- triangle will be at a right angle
- input represents size of each side of triangle

algorithm:
- set spaces to size - 1
- set stars to 1
- until stars > size
  - print (' ' * size) + ('*' * stars)
  - decrement spaces by 1
  - increment stars by 1
=end

def triangle(size)
  spaces = size - 1
  stars = 1
  
  until stars > size
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)
