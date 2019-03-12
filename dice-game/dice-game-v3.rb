# If I roll higher than my opponent, I win.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game.

player_1 = rand(6) + 1
player_2 = rand(6) + 1

if player_1 > player_2
  puts "player_1 wins with #{player_1}"
else
  puts "player_2 wins with #{player_2}"
end
