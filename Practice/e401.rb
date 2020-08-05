def short_long_short(string1, string2)
  if string1.size > string2.size
    long = string1
    short = string2
  else
    long = string2
    short = string1
  end

  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
