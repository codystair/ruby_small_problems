=begin
input: integer (year)
output: string (century)
rules:
- output string will end with st, nd, rd, or th as appropriate
- new centuries begin in years that end in 01
- so 1901-2000 is the 20th century
- endings:
  01 => st
  02 => nd
  03 => rd
  04 => th
  05 => th
  06 => th
  07 => th
  08 => th
  09 => th
  10 => th
  11 => th
  12 => th
  13 => th
  14 => th
  15 => th
  16 => th
  17 => th
  18 => th
  19 => th
  20 => th
  21 => st
  22 => nd
  23 => rd
  24 => th
examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

algorithm
- method for appropriate ending:
  - if suffix

- set century = ((year - 1) / 100) + 1
- convert century integer to string and add ending from ending method
=end

def suffix(ending)
  if (11..13).cover?(ending)
    'th'
  elsif ending % 10 == 1
    'st'
  elsif ending % 10 == 2
    'nd'
  elsif ending % 10 == 3
    'rd'
  else
    'th'
  end
end

def century(year)
  century = ((year - 1) / 100) + 1
  century.to_s + suffix(century % 100)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
