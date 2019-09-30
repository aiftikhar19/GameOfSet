###### CSE 3901 Project 2

# Game of Set - infinite_loop

### Setup

No additional gems or tools need to be installed in order to play this game.

In order to run the program, navigate to the home directory and run the main file in ruby:

`~$ ruby main.rb`

After that point, the game should provide more instructions to the user on how to continue.

### Additional Feature List:

- Multiplayer Mode
- Single-player mode versus Computer Player (with 3 difficulty levels)
- Score tracking for both modes
- Hint Generator for computer Mode
- Timer to find a set

### Method Directory:

File location of each method:        

    1)game_process.rb:
            game_process   
            
    2)timer.rb:
            timer
            
    3)players.rb:
            difficulty_level
            scores
            multiPlayer
    
    5)pair_management.rb:
            attributes_compatible
            set
            hint
    
    6)prompt.rb:
            welcome
            instructions
            mode
            raise_exception
            
    7) pair_existence_check.rb:
            countSets
            computerFindAnswer
