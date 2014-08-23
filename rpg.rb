#RPG Game
#Game Objective For player to recieve < 17 of the same color jewels.
#Three Characters are Wizard, Pirate, Archer
#Wizard = white jewel, Pirate = blue, Archer = red
white_jewel =  {"white jewel" => 7, "blue jewel" => 5, "red jewel" => 5}
blue_jewel =  {"white jewel" => 5, "blue jewel" => 7, "red jewel" => 5}
red_jewel =  {"white jewel" => 5, "blue jewel" => 5, "red jewel" => 7}
computer = {"Wizard" => "white jewel", "Pirate" => "blue jewel", "Archer" => "red jewel" }

puts "Welcome to Fantasy Jewels!"
sleep 1
puts "Would you like to be a Wizard, Pirate, or Archer?"
user_input = gets.chomp
if user_input == "Wizard"
	player = white_jewel
	print "You are a Wizard with 7 white jewels, 5 blue jewels, and 5 red jewels"
elsif user_input == "Pirate"
	player = blue_jewel
	print "You are a Pirate with 7 blue jewels, 5 white jewels, and 5 red jewels"
elsif user_input == "Archer"
	player = red_jewel
	print "You are an Archer with 7 red jewels, 5 blue jewels, and 5 white jewels"
end
sleep 2
puts "Level 1"
#ask user what color of jewels and number of jewels you would like to use to challenge
cpu = ["Wizard", "Pirate", "Archer"]
randomplayer = cpu.sample

if randomplayer == "Archer"
	red = rand(7+1)
	blue = rand(5+1)
	white = rand(5+1)
elsif randomplayer == "Wizard"
	red = rand(5+1)
	blue = rand(5+1)
	white = rand(7+1)
elsif randomplayer == "Pirate"
	red = rand(5+1)
	blue = rand(7+1)
	white = rand(5+1)
end

cpu_sum = red + blue + white

puts "Your opponent is #{randomplayer}."
puts "What color of jewels and number of jewels you would like to use to challenge your oppenent?"

puts "How many red jewels would you like use?"
player_red_choice = gets.chomp.to_i
player_choices = []
player_choices << player_red_choice

puts "How many blue jewels would you like use?"
player_blue_choice = gets.chomp.to_i
player_choices << player_blue_choice

puts "How many white jewels would you like use?"
player_white_choice = gets.chomp.to_i
player_choices << player_white_choice

selected = player_choices
puts "You have selected #{selected}."
total_jewels = player_white_choice + player_blue_choice + player_red_choice
puts "You have a total of #{total_jewels}"
sleep 1
puts "Your opponent has a total of #{cpu_sum}"
sleep 0.5

if cpu_sum > total_jewels
	puts "You Lose"
elsif cpu_sum < total_jewels
	puts "You Win"
elsif cpu_sum = total_jewels
	puts "Tie Game"
end
		
total_result = cpu_sum + total_jewels
total_result_again = total_result / 2
puts "#{total_result_again}"
