dice = [1, 2, 3, 4, 5, 6]
dice2 = [1, 2, 3, 4, 5, 6]
totaltimes = {}
totaltimes_all = 0

dice.each do |die|
  dice2.each do |die2|
    roll = die + die2
    (totaltimes[roll] ||= []) << 1
  end
end

totaltimes.each do |_x, y|
  totaltimes_all += y.count
end

totaltimes.each do |x, y|
  z = ((y.count.to_f / totaltimes_all)*100).ceil
  puts "The odds of #{x} coming up are #{z}%"
end
