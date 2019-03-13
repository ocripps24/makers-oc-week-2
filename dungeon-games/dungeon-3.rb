# Write an adventure game that the player plays from the command line
# by typing in commands like `look`, `north` etc.  They can move
# between rooms, look at things and interact with objects.  The game
# should have this behaviour:
# * Two rooms: hall and study.
# * The player starts in the hall.
# * General commands (can be run at any time).
#   * `quit`: `puts`es `Bye!` and the program stops executing.
#   * (command incorrect for situation): nothing happens, nothing is
#                                        `puts`ed.
# * Room-specific commands
#   * Hall
#     * `look`: `puts`es `You are standing in an hall with a marble
#               floor. You see a door.`
#     * `north`: Move to the study.
#   * Study:
#     * `look`: `puts`es `You are in a warm and cosy study. You see a
#               safe. You see a desk.`
#     * `look at desk`: `puts`es `You see a piece of paper that reads,
#                       The combination is 2451.`
#     * `south`: Move to the hall.
#     * `enter combination 2451`: `puts`es `You see some diamonds in
#                                 the safe, pick them up and make your
#                                 escape` and the program stops
#                                 executing.
#
# * Note: To stop the program (e.g. when the user types `quit` or when
#   they win the game), don't use `exit` to quit the program because
#   this will break the automated tests.  To exit a while loop early,
#   use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.

puts "General command: 'quit' exits the game"
room = 'hall'

while room == 'hall'
  puts "Commands:\n- 'look'\n- 'north'"
  user_input = gets.chomp.downcase

  if user_input == 'north'
    puts 'You move to the study'
    room = 'study'
  elsif user_input == 'look'
    puts 'You are standing in an hall with a marble floor. You see a door.'
    room = 'hall'
  elsif user_input == 'quit'
    puts "Bye!"
    break
  else
    room = 'hall'
  end

  while room == 'study'
    puts "Commands:\n- 'look'\n- 'look at desk'\n- 'south'\n- 'enter combination 2451'"
    user_input = gets.chomp.downcase

    if user_input == 'look'
      puts 'You are in a warm and cosy study. You see a safe. You see a desk.'
      room = 'study'
    elsif user_input == 'look at desk'
      puts 'You see a piece of paper that reads, The combination is 2451.'
      room = 'study'
    elsif user_input == 'south'
      room = 'hall'
    elsif user_input == 'enter combination 2451'
      puts 'You see some diamonds in the safe, pick them up and make your escape'
      break
    elsif user_input == 'quit'
      puts "Bye!"
      break
    else
      room = 'study'
    end

  end

end
