=begin
input: string
output: boolean
rules:
- will return true if input can be spelled from set of blocks
- cannot use both letters from a given block

examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

algorithm:
- set BLOCKS to hash of key-value pairs
- if upcased version of input appears in keys & values return false
- otherwise return true
=end

BLOCKS = {
  'B' => 'O',
  'G' => 'T',
  'V' => 'I',
  'X' => 'K',
  'R' => 'E',
  'L' => 'Y',
  'D' => 'Q',
  'F' => 'S',
  'Z' => 'M',
  'C' => 'P',
  'J' => 'W',
  'N' => 'A',
  'H' => 'U'
}

def block_word?(word)
  letters = word.upcase.chars
  BLOCKS.each do |k, v|
    if letters.include?(k) && letters.include?(v)
      return false
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
