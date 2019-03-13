# If I roll higher than my opponent, I win.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game.

player_1_score = 0
player_2_score = 0

until (player_1_score == 2 || player_2_score == 2) do
  player_1_roll = rand(1..6) + rand(1..6)
  player_2_roll = rand(1..6) + rand(1..6)
  if player_1_roll > player_2_roll
    puts "NEW ROLL:\nPlayer 1 roll: #{player_1_roll}\nPlayer 2 roll: #{player_2_roll}\nPlayer 1 wins!"
    player_1_score += 1
    puts "SCORES:\nPlayer 1: #{player_1_score}\nPlayer 2: #{player_2_score}"
  elsif player_2_roll > player_1_roll
    puts "NEW ROLL:\nPlayer 1 roll: #{player_1_roll}\nPlayer 2 roll: #{player_2_roll}\nPlayer 2 wins!"
    player_2_score += 1
    puts "SCORES:\nPlayer 1: #{player_1_score}\nPlayer 2: #{player_2_score}"
  elsif player_1_roll == player_2_roll
    puts "NEW ROLL:\nPlayer 1 roll: #{player_1_roll}\nPlayer 2 roll: #{player_2_roll}\nIt's a draw!"
    puts "SCORES:\nPlayer 1: #{player_1_score}\nPlayer 2: #{player_2_score}"
  end
end
