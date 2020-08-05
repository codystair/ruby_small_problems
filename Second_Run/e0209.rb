name = 'Bob'
save_name = name
name.upcase!
puts name         # => 'BOB'
puts save_name    # => 'BOB'

=begin
On line 1, the varable `name` is initialized and assigned to the string
`'Bob'`.  On line 2, the variable `save_name` is initialized and assigned
to the same string object `'Bob'` that `name` points to.  Both `name` and
`save_name` reference `'Bob'`.

On line 3, the `upcase!` method is called on the string `'Bob'` that `name`
references and modifies it to `'BOB'`.  Because both `name` and `save_name`
reference the same string, that is what is output when they are passed as
arguments into the `puts` method on lines 4 and 5.
=end
