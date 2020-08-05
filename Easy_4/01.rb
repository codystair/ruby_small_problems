=begin
input: 2 strings
output: string of short + long + short strings
rules:
- input strings will be different lengths

examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

algorithm:
- if str1 is longer than str2: long = str1, shrot = str2
- else long = str2, shrot = str1
- return short + long + short
=end

# My First Draft:
def short_long_short(str1, str2)
  if str1.size > str2.size
    long = str1
    short = str2
  else
    long = str2
    short = str1
  end

  short + long + short
end

# LS Soluation:
# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
