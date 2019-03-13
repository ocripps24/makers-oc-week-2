puts "You may navigate with 'north' or 'south'"
room = 'passage'

while room == 'passage'
  user_input = gets.chomp.downcase

  if user_input == 'north'
    puts 'You are in a scary cave.'
    room = 'cave'
  elsif user_input == 'south'
    room = 'passage'
  else
    room = 'passage'
  end

  while room == 'cave'
    user_input = gets.chomp.downcase

    if user_input == 'north'
      puts 'You walk into sunlight.'
      break
    elsif user_input == 'south'
      puts 'You are in a scary passage.'
      room = 'passage'
    end

  end

end
