def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

test = "hello world"
p test.object_id
puts '          '
p spin_me(test) # "olleh dlrow"
puts '          '
p test
p test.object_id # => same as line 8
