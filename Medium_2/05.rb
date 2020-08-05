=begin
input: 3 integers
output: symbol
rules:
- inputs are 3 sides of a triangle
- returns what type of triangle:
  - :equilateral => all three sides are equal
  - :isosceles => only 2 sides are equal
  - :scalene => all three sides are different
  - :invalid => sum of short sides <= long side

examples:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

algorithm:
- set sides to array of input integers sorted
- set short1, short2, and long to sides at 0, 1, and 2 index
- return :invalid if short1 + short2 <= long
- return :equilateral if all sides are same
- return :isosceles if two sides are same
- otherwise return :scalene
=end

def triangle(a, b, c)
  sides = [a, b, c].sort
  short1, short2, long = sides[0], sides[1], sides[2]
  if short1 + short2 <= long
    :invalid
  elsif short1 == short2 && short1 == long
    :equilateral
  elsif short1 == short2 || short1 == long || short2 == long
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
