def count_occurrences(array)
  types = array.uniq
  types.each { |type| puts "#{type} => #{array.count(type)}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
