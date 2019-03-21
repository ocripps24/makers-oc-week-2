# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.

letter_points = {
  0 => [" "],
  1 => ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["K"],
  8 => ["J", "X"],
  10 => ["Q", "Z"]
}

total_score = 0

puts "Enter word to be scored: "
user_input = gets.chomp

score_array = user_input.split("")

score_array.each do |input|
  letter_points.each do |score, letters|
    letters.each do |letter|
      if input == letter
        total_score += score
      end
    end
  end
end

puts total_score
