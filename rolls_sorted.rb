dice1 = [1, 2, 3, 4, 5, 6]
dice2 = []

10.times do
  dice2 << dice1[Random.rand(6)]
end

def sort(x)
  sorted = x.sort
  sorted.each do |roll|
    puts "The result of your roll is #{roll}."
  end
end

sort(dice2)
