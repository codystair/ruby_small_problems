def prompt(string)
  puts "==> #{string}"
end

prompt "Enter the 1st number:"
num1 = gets.to_i
prompt "Enter the 2nd number:"
num2 = gets.to_i
prompt "Enter the 3rd number:"
num3 = gets.to_i
prompt "Enter the 4th number:"
num4 = gets.to_i
prompt "Enter the 5th number:"
num5 = gets.to_i
prompt "Enter the last number:"
last = gets.to_i

numbers = [num1, num2, num3, num4, num5]

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end
