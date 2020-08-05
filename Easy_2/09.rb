name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# In lines 1-2, both variables reference the same string.
# On line 3, the string they point to is mutated.
# Both variables now point to 'BOB'.
# Therefore, 'BOB' will be print out for both.
