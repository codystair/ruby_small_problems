def oddities(array)
  result = []
  array.each_with_index do | item, i |
    if i.even?
      result.push(item)
    end
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
