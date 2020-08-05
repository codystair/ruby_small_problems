=begin
input: integer
output: string
- input may be positive or negative or 0
- 0 means midnight
- > 0 means after midnight
- < 0 means before midnight
- output represents time before or after midnight
- ouput will be in format "hours:minutes"
- can't use Date or Time classes

examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

algorithm:
- determine days
  - set days to number / 1440
- determine hours
  - set hours to number % 1440 / 60
- determine minutes
  - set minutes to number % 1440 % 60
- format output string
  -
=end

def time_of_day(number)
  hours = number % 1440 / 60
  minutes = number % 1440 % 60
  hours = format("%02d", hours)
  minutes = format("%02d", minutes)
  "#{hours}:#{minutes}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
