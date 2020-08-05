=begin
input: string of commands
output: printed results of commands

algorithm:
- set stack to empty array
- set register to 0
- 
=end

def minilang(commands)
  stack = []
  register = 0
  commands.split.each do |command|
    case command
    when 'PUSH'
      stack << register
    when 'PRINT'
      puts register
    when 'ADD'
      register += stack.pop
    when 'SUB'
      register -= stack.pop
    when 'MULT'
      register *= stack.pop
    when 'DIV'
      register = register / stack.pop
    when 'MOD'
      register = register % stack.pop
    when 'POP'
      register = stack.pop
    else
      register = command.to_i
    end
  end
end

# minilang('PRINT')
# # 0
# minilang('5 PUSH 3 MULT PRINT')
# # 15
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# minilang('5 PUSH POP PRINT')
# # 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12
# minilang('-3 PUSH 5 SUB PRINT')
# # 8
# minilang('6 PUSH')
