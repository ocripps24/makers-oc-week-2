# Write a program that lets a user player a solo game of
# Blackjack. The program should:
# * Ask the player if they want to "hit" or "stick".
#   * If the player hits, add a card to their hand.
#   * If the player sticks, end the game.
# * Keep asking the player if they want to "hit" or "stick" until they
#   say "stick".
# * Each time the player hits, calculate the score for the player's
#   hand and `puts` `Score so far: ` and the score.
#   * e.g. `Score so far: 23`
#   * A score is calculated by adding up the values of each of the
#     cards in the player's hand.
#   * Value for each card:
#     * "two": 2
#     * "three": 3
#     * "four": 4
#     * "five": 5
#     * "six": 6
#     * "seven": 7
#     * "eight": 8
#     * "nine": 9
#     * "ten": 10
#     * "jack": 10
#     * "queen": 10
#     * "king": 10
#     * "ace": 11 (This is slightly different from real Blackjack.)
# * When the game is over, `puts` the outcome of the game.
#   * If the player's score is `<= 21`, `puts` `You scored: ` and the
#     final score
#     * e.g. `You scored: 20`
#   * If the player's score is `> 21`, `puts` `You busted with: ` and
#     the final score.
#     * e.g. `You busted with: 25`

# * As part of your solution, there should be four specific methods:
#   * `random_card`: This has already been written for you.  You don't
#     need to change it.
#   * `move`: Asks the player for a move.  If they enter `hit` or
#     `stick`, it returns the move.  If they enter something else, it
#     keeps asking them until they enter `hit` or `stick`.
#   * `score`: Takes an array of cards and returns the score for the
#     hand as an integer.
#   * `run_game`: uses the other methods to run a game of Blackjack.
#
# * Note: When you run the automated tests, make sure to remove from
#   the top level of the file any calls to `run_test` or other
#   methods.
#
# * Note: To stop the game when the user sticks, don't use `exit` to
#   quit the program because this will break the automated tests.  To
#   exit a while loop early, use the `break` keyword.

# You don't need to change this method!

# *`random_card`: This has already been written for you.  You don't
# need to change it.
# COMPLETE

def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

# *`move`: Asks the player for a move.  If they enter `hit` or
# `stick`, it returns the move.  If they enter something else, it
# keeps asking them until they enter `hit` or `stick`.
# COMPLETE

def move
  puts 'Hit or stick: '
  card_request = gets.downcase.chomp
  if card_request == 'hit' || card_request == 'stick'
    return card_request
  else
    return move
  end
end

# *`score`: Takes an array of cards and returns the score for the
# hand as an integer.
# COMPLETE

def score(player_hand)
  card_scores = {
    'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6,
    'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10, 'jack' => 10,
    'queen' => 10, 'king' => 10, 'ace' => 11
  }

  scorecard = 0

  card_scores.each do |card, value|
    player_hand.each do |drawn|
      scorecard += value if drawn == card
    end
  end

  scorecard
end

# *`run_game`: uses the other methods to run a game of Blackjack.

# * Ask the player if they want to "hit" or "stick".
#   * If the player hits, add a card to their hand.
#   - COMPLETE
#   * If the player sticks, end the game.
#   - COMPLETE
# * Keep asking the player if they want to "hit" or "stick" until they
#   say "stick".
#   - COMPLETE
# * Each time the player hits, calculate the score for the player's
#   hand and `puts` `Score so far: ` and the score.
#   * e.g. `Score so far: 23`
#   * A score is calculated by adding up the values of each of the
#     cards in the player's hand.
#   - COMPLETE
# * When the game is over, `puts` the outcome of the game.
#   * If the player's score is `<= 21`, `puts` `You scored: ` and the
#     final score
#     * e.g. `You scored: 20`
#   * If the player's score is `> 21`, `puts` `You busted with: ` and
#     the final score.
#     * e.g. `You busted with: 25`
#   - COMPLETE

def run_game
  player_hand = []

  loop do
    if move == 'hit'
      player_hand.push(random_card)
      puts "Score so far: #{score(player_hand)}"
    elsif move == 'stick'
      break
    end
  end

  hand_total = score(player_hand)

  if hand_total <= 21
    puts "You scored: #{score(player_hand)}"
  else
    puts "You busted with: #{score(player_hand)}"
  end
end

run_game

# Can't seem to diagnose why you have to type 'stick' twice to
# end the game. Current idea is that move method would have to be
# rewritten but that it would break the rules given by the challenge.
