=begin
- input: integer and boolean
- output: integer
- rules:
  - input integer will be positive
  - input integer represents salary
  - input boolean represents whether there is a bonus
  - output represents bonus amount
  - output will be 0 if boolean is false
  - bonus is half of input integer

- examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

- algorithm:
  - return 0 if boolean is false
  - return salary / 2
=end

def calculate_bonus(salary, bonus)
  return 0 if bonus == false
  salary / 2
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
