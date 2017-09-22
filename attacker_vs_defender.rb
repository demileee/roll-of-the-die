puts "Welcome to Attacker vs. Defender!"
puts "To begin a new game, enter 'y'"
input = gets.chomp

until input == "y"
  puts "I'm sorry, I didn't get that."
  puts "To begin a new game, enter 'y'"
  input = gets.chomp
end

def play()
  x = 5
  y = 5
  while true
    puts "\nNew Battle Begins!"
    puts "=================="

    puts "\nArmies before the battle:"
    puts "Attacker: #{x} armies"
    puts "Defender: #{y} armies"

    att_rolls = []
    def_rolls = []

    def prompt_att()
      puts "Attackers: Press ENTER to roll!"
      arbitrary_input = gets
    end

    def prompt_def()
      puts "\nDefenders: Press ENTER to roll!"
      arbitrary_input = gets
    end

    if x > 3
      3.times do
        att_rolls << Random.rand(1..6)
      end
      prompt_att()
      puts "Attacker rolls #{att_rolls.to_s}."
    elsif x == 3
      2.times do
        att_rolls << Random.rand(1..6)
      end
      prompt_att()
      puts "Attacker rolls #{att_rolls.to_s}."
    elsif x == 2
      att_rolls << Random.rand(1..6)
      prompt_att()
      puts "Attacker rolls #{att_rolls.to_s}."
    else
      prompt_att()
      puts "Attacker cannot make anymore rolls."
    end

    if y >= 2
      2.times do
        def_rolls << Random.rand(1..6)
      end
      prompt_def()
      puts "Defender rolls #{def_rolls.to_s}."
    elsif y == 1
      def_rolls << Random.rand(1..6)
      prompt_def()
      puts "Defender rolls #{def_rolls.to_s}."
    else
      prompt_def()
      puts "Defender cannot make anymore rolls."
    end

    att_rolls.slice!(2)
    att_rolls.slice!(3)
    def_rolls.slice!(2)
    def_rolls.slice!(3)

    if att_rolls.length > 1 && def_rolls.length > 1
      if att_rolls[0] > def_rolls[0]
        puts "\nAttacker wins a battle: #{att_rolls[0]} beats #{def_rolls[0]}."
        y = y - 1
        if att_rolls[1] > def_rolls[1]
          puts "Attacker wins a battle: #{att_rolls[1]} beats #{def_rolls[1]}."
          y = y - 1
        elsif att_rolls[1] <= def_rolls[1]
          puts "Defender wins a battle: #{def_rolls[1]} beats #{att_rolls[1]}."
          x = x - 1
        end
      elsif att_rolls[0] <= def_rolls[0]
        puts "\nDefender wins a battle: #{def_rolls[0]} beats #{att_rolls[0]}."
        x = x - 1
        if att_rolls[1] > def_rolls[1]
          puts "Attacker wins a battle: #{att_rolls[1]} beats #{def_rolls[1]}."
          y = y - 1
        elsif att_rolls[1] <= def_rolls[1]
          puts "Defender wins a battle: #{def_rolls[1]} beats #{att_rolls[1]}."
          x = x - 1
        end
      end
    elsif att_rolls.length == 1 || def_rolls.length == 1
      if att_rolls[0] > def_rolls[0]
        puts "\nAttacker wins a battle: #{att_rolls[0]} beats #{def_rolls[0]}."
        y = y - 1
      elsif att_rolls[0] <= def_rolls[0]
        puts "Defender wins a battle: #{def_rolls[0]} beats #{att_rolls[0]}."
        x = x - 1
      end
    end

    if x <= 1
      puts "\nFinal Outcome"
      puts "=============\n"
      puts "Attacker's final army count: #{x}"
      puts "Defender's final army count: #{y}"
      puts "Defender retains their country!"
      break
    elsif y <= 1
      puts "\nFinal Outcome"
      puts "=============\n"
      puts "Attacker's final army count: #{x}"
      puts "Defender's final army count: #{y}"
      puts "Attacker retains their country!"
      break
    end

    puts "\nPress ENTER for the next round!"
    puts "To leave this game, enter 'n'"
    round = gets.chomp

    if round == "n"
      break
    end

  end
end

while input == "y"
  play()
  puts "\nWould you like to play again?"
  puts "To begin, enter 'y'"
  puts "To exit, enter 'n'"
  input = gets.chomp
    if input == "n"
      break
    end
end

puts "Hope to see you again!"
