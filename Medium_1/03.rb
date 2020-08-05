=begin
input: integer
output: integer
rules:
- returns max rotation of input
- max rotation is when you rotate incrementally until end

examples:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

algorithm:
- set digits to num split into digit strings as array
- set i to 0
- set remaining to digits[i..-1]
- set digits
=end
def max_rotation(num)
  digits = num.to_s.chars
  n = digits.size
  until n == 0
    num = rotate_rightmost_digits(num, n)
    n -= 1
  end
  num
end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n)
  digits = num.to_s.chars
  rotated = rotate_array(digits[-n..-1])
  result = digits[0...-n] + rotated
  result.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
