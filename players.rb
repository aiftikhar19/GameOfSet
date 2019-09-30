require_relative 'game_process'
require_relative 'timer'
require_relative 'prompt'
require_relative 'pair_management'

#11. Choose how smart the computer will be depending on different level
def difficulty_level
	puts "\nChoose which level you would like to play:"
	puts "(1)Easy"
	puts "(2)Medium"
	puts "(3)Hard"
	print "Choose: "
	case gets.chomp()		
		when "1"
			n = 3
		when "2"
			n = 6
		when "3"
			n = 9
		else
			puts "Invalid input! So you wanna play hard ball, eh..."
			n = 9
	end
        return (0..n).to_a
end

#12. keep track of scores for each player for both computer Mode and multiplayers Mode
def scores(scoresArray, userIDArray, mode)
	if mode == 1
		puts "\nScoreboard:"
		puts "Computer: #{scoresArray[0]}"
		puts "You: #{scoresArray[1]}"
		sleep 3
		system "clear"
	elsif mode == 2
		puts "\nScoreboard:"
		x = 0
		while x < userIDArray.length do
			puts "#{userIDArray.fetch(x)}: #{scoresArray.fetch(x)}"
			x += 1
		end
		sleep 3
		system "clear"
	end
end


#13. method for multiplayer, store playerIDs into an array 
def multiPlayer num
	i = 0
	userIDArray = Array.new num
    #store Id into array 
	while i < num
		puts "Please enter an ID for user #{i+1}:"
		currentPlayer = gets.chomp()
        
        #check for a valid userID
		if currentPlayer.length == 0 || userIDArray.include?(currentPlayer)
			puts "ID has been used. Please enter a valid ID!"
		else
			userIDArray[i] = currentPlayer
			i += 1
		end
	end
	return userIDArray
end


