
#4.  welcome info
def welcome
	puts "Welcome to the Set Card Game! Please choose from the following options:"
	puts "Options: "
	puts "(1) Play"
	puts "(2) Instructions"
	puts "(3) Exit"
	print "Your choice: "
	choice = gets.to_i()

	#error check
	while choice > 3 and choice < 1 
		puts "Invalid option! Please choose from the following options:"
		puts "Options: "
		puts "1) Play"
		puts "2) Instructions"
		puts "3) Exit"
		print "Your choice: "
		choice = gets.to_i()
	end
	return choice		
end	

#5. method contains instructions for game
def instructions?(x)
	if  x==1
		system "clear"
		puts "Instructions:"
		puts "In the Set card game, there is a deck of 81 cards. At the beginning of the game, 12 cards are laid out. The object of the game is to identify a 'set' of three cards from those laid out. Each card has a variation of the following four features:\n\n"
		puts "COLOR: each card can be red, green, or purple"
		puts "SYMBOL: each card contains ovals, squiggles, and diamonds"
		puts "NUMBER: each card can have one, two, or three symbols"
		puts "SHADING: each card is solid, open, or striped"
		puts "\nA 'Set' consists of three cards in which each feature is EITHER the same on each card OR is different on each card. That is to say, any feature in the 'Set' of three cards is either common to all three cards or is different on each card.\n\n"
		
		print "Enter 0 to continue playing. Otherwise, hit enter to exit: "
		answer = gets.chomp()
		if answer == "0"
			return false
		else 
			puts "Thanks for playing!"
			exit(0)
		end
	elsif x==2
		puts "\nIn single player mode, you will play against the computer. You can choose the level of difficulty of the game: easy, medium, or hard. For each level, there are a different number of possible hints."
		puts "The computer will go first to demonstrate. After the computer's turn is finished, cards will be reshuffled if necessary, and you will then have 30 seconds to find a set. At the end of each set, the scoreboard will be displayed briefly. At any time to quit the game, you can enter \'q\' when asked to input a card."

		print "\nEnter 0 to continue playing. Otherwise, hit enter to exit: "
		answer = gets.chomp()
		if answer == "0"
			return false
		else 
			puts "Thanks for playing!"
			exit(0)
		end
	elsif x==3
		puts "\nIn multiplayer mode, you can play against a group of people. You will be prompted to enter the number of players, and then to enter a unique identifier for each player."
		puts "For each turn, the user will be asked to enter their ID in order to keep track of the score. There are no hints available in multiplayer mode. At the end of each set, the scoreboard will be displayed briefly. At any time to quit the game, the user can enter \'q\' when asked to input a card."
		
		print "\nEnter 0 to continue playing. Otherwise, hit enter to exit: "
		answer = gets.chomp()
		if answer == "0"
			return false
		else 
			puts "Thanks for playing!"
			exit(0)
		end
	end
end 

#6. get single player or multiplayer modes
def mode
	print "\nChoose (1) for single player or (2) for multiplayer: "
	gameOption = gets.to_i()

	while gameOption != 2 and gameOption != 1
		print "Invalid option! Please choose (1) for single player or (2) for multiplayer: "
		gameOption = gets.to_i
	end
	return gameOption
end 

#7. check if user's input are integers and in the correct range
def raise_exception(num)
	if num == "q"
		puts "Thanks for playing!"
		exit(0)
	elsif num == "h"
		return "h"
	end
	# user input must be a interger
	unless num !~ /\D/ 
		puts "Invalid entry! Your choice must be an integer."
		return true
    	end

	# user input must be in the appropriate range
	unless (0..11).include? num.to_i
		puts "Invalid entry! The input number must between 0 and 11."
		return true
	end
	
	return false
end



