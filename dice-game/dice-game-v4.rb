# If I roll higher than my opponent, I win.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game.

player_1_score = 0
player_2_score = 0


until (player_1_score == 2 || player_2_score == 2) do

player_1 = rand(1..6) + rand(1..6)
player_2 = rand(1..6) + rand(1..6)


if player_1 > player_2
  puts "Player 1 wins with: #{player_1}"
  player_1_score += 1
  puts "Player 1 score: #{player_1_score}\nPlayer 2 score: #{player_2_score}"
elsif player_2 > player_1
  puts "Player 2 wins with: #{player_2}"
  player_2_score += 1
  puts "Player 1 score: #{player_1_score}\nPlayer 2 score: #{player_2_score}"
else
  puts "DRAW: Player 1 scored #{player_1} and Player 2 scored #{player_2}"
  puts "Player 1 score: #{player_1_score}\nPlayer 2 score: #{player_2_score}"
end

end
