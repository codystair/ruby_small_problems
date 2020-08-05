=begin
input: array and hash
output: string
rules:
- array is person's name
- hash contains title and occupation
- will return greeting that usues full name, occupation, and title

examples:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == 'Hello, John Q Doe! Nice to have a Master Plumber around.'

algorithm:
- set name to array joined as string with spaces
- set job to string with title and occupation seperated by space
- return string
=end

def greetings(arr, hash)
  "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == 'Hello, John Q Doe! Nice to have a Master Plumber around.'
