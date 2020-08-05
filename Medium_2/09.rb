=begin
input: array
output: array
rules:
- output will be mutated input array
- elements in output will be sorted in increasing value
- sorting will be done via bubble sort algorithm

examples:
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

algorithm:
- set sorted to false
- until sorted == true
  - set sorted to true
  - set i to 0
  - set current to arr[i]
  - set next to arr[i + 1]
  - while i < size of array - 1:
    - if current > next:
      - swap elements in arr
      - set sorted to false
- return array
=end

def bubble_sort!(arr)
  sorted = false
  until sorted
    sorted = true
    i = 0
    while i < arr.size - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
      i += 1
    end
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
