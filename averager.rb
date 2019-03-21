def average(scores)
  scores_accumulator = 0

  scores.each do |score|
    scores_accumulator += score
  end

  result = scores_accumulator.to_f / scores.length
end

puts average([10,4,5,10,7])
