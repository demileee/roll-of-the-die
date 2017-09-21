dice = [1, 2, 3, 4, 5, 6]
dice2 = [1, 2, 3, 4, 5, 6]

dice.each do |die|
  dice2.each do |die2|
    puts "#{die} #{die2}"
  end
end
