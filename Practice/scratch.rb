def integer_to_string(number)
  digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

  result = ''

  loop do
    number, digit = number.divmod(10) # => [455, 6]
    result.prepend(digits[digit])

    break if number == 0
  end

  result
end

p integer_to_string(4556)
