=begin
input: 3 integers
output: symbol
rules:
- inputs are angles of a triangle
- will return :right if one angle is 90
- will return :acute if all three are < 90
- will return :obtuse if one angle is > 90
- will return :invalid if sum of angles isn't 180
- will return :invalid if any angle <= 0

examples:
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

algorithm:
- check if triangle is invalid
- check if triangle is right
- check if triangle is obtuse
- check if triangle is acute
=end

def triangle(a, b, c)
  angles = [a, b, c]
  case
  when angles.sum != 180 || angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
