def prompt(string)
  puts "==> #{string}"
end

prompt "Enter the first number:"
num1 = gets.to_i
prompt "Enter the second number:"
num2 = gets.to_i

sum = num1 + num2
subtract = num1 - num2
product = num1 * num2
quotient = num1 / num2
remainder = num1 % num2
power = num1 ** num2

prompt "#{num1} + #{num2} = #{sum}"
prompt "#{num1} - #{num2} = #{subtract}"
prompt "#{num1} * #{num2} = #{product}"
prompt "#{num1} / #{num2} = #{quotient}"
prompt "#{num1} % #{num2} = #{remainder}"
prompt "#{num1} ** #{num2} = #{power}"
