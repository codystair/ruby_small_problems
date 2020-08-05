=begin
input: string and a positive integer
output: string output integer number of times
rules:
- the string will be printed as many times as integer indicates

algorithm:
- set parameters of method to str and num
- num number of times:
  - print str
=end

def repeat(str, num)
  num.times do
    puts str
  end
end

repeat('Hello', 3)