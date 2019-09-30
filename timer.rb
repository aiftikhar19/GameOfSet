



#8. timer method
def timer
	i = 30
	#print timer on the screen
	while i > -1
		sleep  1
		print "\b" * 70
		printf "You have %02s seconds left to find a set.", i
		i -= 1
	end
end


