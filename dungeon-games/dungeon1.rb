move_number = 1

while true do
  puts "You are facing forwards and can type 'forward', 'left', or 'right'."
  user_input = gets.chomp

  if user_input == 'left'
    puts 'You died! You were killed by a Goblin!'
    break
  elsif user_input == 'right'
    puts 'You died! You were eaten by a werewolf!'
    break
  elsif user_input == "forward"
    if move_number == 2
      puts "You win!"
      break
    end
    move_number += 1
  end
end
