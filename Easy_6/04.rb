=begin
input: array
ouput: same array
rules:
- output will return same array object as input
- output will have input elements in reverse order
- don't use reverse methods

examples:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []

algorithm:
- set counter to 0
- while counter < size of input array
  - set last to first item of array shifted
  - push first to array
  - counter += 1
- return array
=end

def reverse!(array)
  i = -2
  until array[i] == nil do
    array << array.delete_at(i)
    i -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
