dice = [1, 2, 3, 4, 5, 6]
dice2 = [1, 2, 3, 4, 5, 6]

dice.each do |die|
  dice2.each do |die2|
    puts "Dice Roll: #{die} #{die2} Total: #{die + die2}"
  end
end
