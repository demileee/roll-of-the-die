dice = [1, 2, 3, 4, 5, 6]
rolls1 = []
rolls2 = []

def roll2sum(x, y, z)
  1.times do
    y << x[Random.rand(6)]
    z << x[Random.rand(6)]
  end
  puts "You rolled #{y[0]} and #{z[0]}."
  if y[0] == z[0]
    puts "Doubles!"
  else
  end
  puts "Your total: #{y[0] + z[0]}."
end

roll2sum(dice, rolls1, rolls2)
