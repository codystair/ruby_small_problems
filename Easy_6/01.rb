=begin
input: float
output: string
rules:
- input will be float between 0 and 360 degrees
- ouput will be input in degrees, minutes, and seconds:
  - 1 degree == 60 minutes
  - 1 minute == 60 seconds

  examples:
  dms(30) == %(30°00'00")
  dms(76.73) == %(76°43'48")
  dms(254.6) == %(254°36'00")
  dms(93.034773) == %(93°02'05")
  dms(0) == %(0°00'00")
  dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

algorithm:
- get degrees, minutes, and seconds
  - set degrees to number / 1
  - set minutes to ((number % 1) * 60) / 1
  - set seconds to (((number % 1) * 60) % 1) * 60
- correctly format output string
  - round minutes and seconds to 2 decimal places
  - convert to string with leading 0
=end
DEGREE = "\xC2\xB0"

def dms(number)
  degrees = number / 1
  minutes = ((number % 1) * 60) / 1
  seconds = (((number % 1) * 60) % 1) * 60

  "#{degrees.to_i}#{DEGREE}#{format('%02d', minutes.to_i)}'#{format('%02d', seconds.to_i)}\""
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) #== %(0°00'00")
