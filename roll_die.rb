dice = [1, 2, 3, 4, 5, 6]

def roll(y)
  x = Random.rand(6)
  puts "The result of your roll is #{y[x]}."
end

roll(dice)
