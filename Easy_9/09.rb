=begin
input: 3 integers
output: string
rules:
- inputs represents 3 grades
- output represents grade letter associated with average of grades

examples:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

algorithm:
- 
=end

def get_grade(grade1, grade2, grade3)
  average = [grade1, grade2, grade3].sum / 3
  case average
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  when 0..59
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
