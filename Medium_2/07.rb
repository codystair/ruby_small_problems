=begin
input: integer
output: integer
rules:
- input will be year
- output will be number of fridays the 13ths in that year

examples:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
=end

def friday_13th(year)
  count = 0
  1.upto(12) do |month|
    if Time.new(year, month, 13).friday?
      count += 1
    end
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
