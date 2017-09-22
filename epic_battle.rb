puts "Welcome to THE EPIC BATTLE!"
puts "To begin, enter 'y'"
input = gets.chomp

until input == "y"
  puts "I'm sorry, I didn't get that."
  puts "To begin a new game, enter 'y'"
  input = gets.chomp
end

def play()
  x = 5
  y = 5

  puts "\nNew Battle Begins!"
  puts "=================="

  puts "\nArmies before the battle:"
  puts "Attacker: #{x} armies"
  puts "Defender: #{y} armies"


  puts "\nPress ENTER to COMMENCE THE EPIC BATTLE!!!"
  arbitrary_input = gets

  dice = [1, 2, 3, 4, 5, 6]

  puts "Attack | Def"
  puts "------------"

  dice.each do |roll1|
    dice.each do |roll2|
      dice.each do |roll3|
        puts "#{roll1} #{roll2} #{roll3} \s\s #{roll2} #{roll3}"

        att_1 = 0
        att_2 = 0

        if roll1 > roll2 && roll1 > roll3
          att_1 = roll1.to_i
          if roll2 > roll3
            att_2 = roll2.to_i
          elsif roll3 > roll2
            att_2 = roll3.to_i
          end
        elsif roll2 > roll1 && roll2 > roll3
          att_1 = roll2.to_i
          if roll1 > roll3
            att_2 = roll1.to_i
          elsif roll3 > roll1
            att_2 = roll3.to_i
          end
        elsif roll3 > roll1 && roll3 > roll2
          att_1 = roll3.to_i
          if roll1 > roll2
            att_2 = roll1.to_i
          elsif roll2 > roll1
            att_2 = roll2.to_i
          end
        end

        if att_1 > roll2
          y = y - 1
        elsif roll2 > att_1
          x = x - 1
        end

        if att_2 > roll3
          y = y - 1
        elsif roll3 > att_2
          x = x - 1
        end
      end
    end
  end

  puts "\nFinal Outcome"
  puts "=============\n"
  puts "Attacker's final army count: #{x}"
  puts "Defender's final army count: #{y}"

  ratio = y.to_f/x

  puts "\nFor every 100 armies the attacker loses, the defender loses #{(ratio*100).ceil} armies."
end

play()
