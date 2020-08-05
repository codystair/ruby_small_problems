def stringy(number)
result = ''
counter = 1

  loop do
    if counter.odd?
      result += '1'
    else
      result += '0'
    end

    counter += 1
    break if counter > number
  end

  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
