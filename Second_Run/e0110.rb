=begin
input: integer and a boolean
output: integer
rules:
- if boolean is true, returns 1/2 of num
- if booloean is false, returns 0

examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

algorithm:
- if boolean is true, return salary / 2
- otherwise return 0
=end

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
