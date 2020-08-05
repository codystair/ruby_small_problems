=begin
input: array
output: print occurances of each element to screen
rules:
- will print number of occurances of each element in array
- will print using "element => occurances" format

algorithm:
- iterate over unique version of input array:
  - set occurances to number of times current element appears in input array
  - print current element + => + occurances
=end

def count_occurances(arr)
  arr.uniq.each do |el|
    occurances = arr.count(el)
    puts "#{el} => #{occurances}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurances(vehicles)