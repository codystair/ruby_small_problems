=begin
input: string in "hours:minutes" format
output: integer
rules:
- 2 methods: before and after midnight
- 00:00 and 24:00 should return 0
- output will be positive
- output represents minutes

examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

algorithm:
- split input into array at :
- set hours to arrah[0] converted to integer
- set mintues to array[1] converted to integer
- set mintues to minutes + (hours * 60)
- in before, return 1440 - minutes
- in after, return minutes
=end

def before_midnight(time)
  hours, minutes = time.split(':')
  hours = hours.to_i
  minutes = minutes.to_i
  minutes += hours * 60
  return 0 if minutes == 0 || minutes == 1440
  1440 - minutes
end

def after_midnight(time)
  hours, minutes = time.split(':')
  hours = hours.to_i
  minutes = minutes.to_i
  minutes += hours * 60
  minutes == 1440 ? 0 : minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
