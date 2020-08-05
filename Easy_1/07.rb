=begin
- input: integer
- output: string
- rules:
  - input will be positive
  - output will be alternating 1s and 0s starting with 1
  - length of output will match input integer

- examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

- algorithm:
  - set result to empty string
  - set counter = 1
  - while counter <= number
    - add '1' to result if counter is odd
    - add '0' to result if counter is even
  - return result
=end

def stringy(number)
  result = ''
  counter = 1
  while counter <= number do
    if counter.odd?
      result << '1'
      counter += 1
    else
      result << '0'
      counter += 1
    end
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
