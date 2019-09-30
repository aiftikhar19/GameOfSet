
#1. method to check if two sets of attributes are either A: all the same, or B: all different
def attributes_compatible?(a,b,c)
	(a==b && b==c) || (a!=b && a!=c && b!=c)
end

#2. check whether a potential set is really a set
def set?(c1,c2,c3)
	return false unless attributes_compatible? c1[0],c2[0],c3[0]
	return false unless attributes_compatible? c1[1],c2[1],c3[1]
	return false unless attributes_compatible? c1[2],c2[2],c3[2]
	return false unless attributes_compatible? c1[3],c2[3],c3[3]
	return true
end

#3. helper method written to find a pair of set in the game
def hint(active, num_hint)
    
	#all combination for user's choice[repeat chosing from 0 to 12 for 3 times]
	hint = (0...11).to_a
	hint_set = hint.product(hint).product(hint)

	for i in hint_set
		choice = i.join("_").split "_"
        
		# evalutaion will be jumped over if two cards chosen by user are the same 
		# For example, [0,0,1] or [10,4,10] are not allowed since user need to choose
		# three different cards. 
		if choice[0]!=choice[1] and choice[0]!=choice[2] and choice[1]!=choice[2]
            
			if num_hint == 1 and set?(active[choice[0].to_i], active[choice[1].to_i], active[choice[2].to_i]) 
				puts "How about choosing #{choice[0]} as your first card"
				break    
			end
			if num_hint == 2 and set?(active[choice[0].to_i], active[choice[1].to_i], active[choice[2].to_i])
				puts "How about choosing #{choice[1]} as your second card" 
				break
			end
			if num_hint == 3 and set?(active[choice[0].to_i], active[choice[1].to_i], active[choice[2].to_i])
				puts "How about choosing #{choice[2]} as your third card" 
				break
			end
		end
	end
end 
