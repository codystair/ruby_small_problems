=begin
input: 2 integers
output: integer
rules: 
- will return first integer with digits rotated
- second number is how many digits from end to rotate
- rotating 1 digit will return original number

examples:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

algorithm:
- set result to empty array
- set digits as num split into array of digit strings
- set result to 
- return result joined and converted to integer
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n)
  digits = num.to_s.chars
  rotated = rotate_array(digits[-n..-1])
  result = digits[0...-n] + rotated
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
