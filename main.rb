#TODO: information
require_relative 'game_process'
require_relative 'timer'
require_relative 'prompt'

choice = welcome
flag = true

while flag
	play = true
	case choice 
		when 1
        #game will start
			game_process
			flag = false
		when 2
        #instruction will be shown on the display
			play = instructions?(1)
			system "clear"
			choice = 1
		when 3  
        # game will end
			puts "Thanks for playing!"
			flag = false
		else 
        # game will end
			puts "Invalid input! Exiting game..."
			flag = false
	end 
end






    
    

    
    
    
