dice = [1, 2, 3, 4, 5, 6]
rolls = []

def roll(x, y)
  5.times do
    y << x[Random.rand(6)]
  end
end

def sort(x)
  sorted = x.sort
  sorted.each do |roll|
    puts "The result of your roll is #{roll}."
  end
end

def lowhi(x)
  puts "The lowest number is #{x.first}."
  puts "The highest number is #{x.last}."
end

roll(dice, rolls)
sort(rolls)
lowhi(rolls)
