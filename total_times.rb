dice = [1, 2, 3, 4, 5, 6]
dice2 = [1, 2, 3, 4, 5, 6]
counter = {}

dice.each do |die|
  dice2.each do |die2|
    total = die + die2
    (counter[total] ||= []) << 1
  end
end

counter.each do |x, y|
  puts "#{x} occurs #{y.count} times."
end
