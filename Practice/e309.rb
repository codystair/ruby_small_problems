name = 'Bob' # => 'Bob'
save_name = name # => 'Bob'
name.upcase! # => 'BOB'
puts name, save_name # 'BOB', 'BOB'
# This is because 'upcase!' mutates the object both
# name and save_name point to.
