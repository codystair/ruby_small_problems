=begin
input: integer
output: array
rules:
- input is number of switches
- output is array of switches that are on
- all switches start out as off
- on the first pass, every light is turned on
- on the second pass, every other light is turned on starting at 2
- each consecutive pass starts light one ahead

algorithm:
- build lights array with n number of elements
- set i to 0
- set counter to 1
- n number of times:
  - if counter == 1, set all lights to true
    - increment counter by 1
  - else:
    - while i < size of lights:
      - change current to !current
      - increment i by 2
    - increment counter by 1
    - set i = counter - 1
=end

def one_thousand_lights(n)
  lights = {}
  1.upto(n) { |num| lights[num] = false }
  
  counter = 1
  i = counter
  n.times do
    while i <= lights.keys.size
      lights[i] = !lights[i]
      i += counter
    end
    counter += 1
    i = counter
  end
  
  lights.keys.select { |k| lights[k] == true }
end

p one_thousand_lights(5) == [1, 4]
p one_thousand_lights(10) == [1, 4, 9]
p one_thousand_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
