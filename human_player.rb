class Human_player

	attr_accessor :mark

	#Human or Computer
	def initialize(mark)
		@mark = mark
	end

	def getMove(board,m,n)
		 puts "Player #{@mark} inform position m(mxn) "
			 positionM = gets.chomp.to_i
		puts "Player #{@mark} inform position n(mxn) "
			 positionN = gets.chomp.to_i
	    while positionAvailable?(board,positionM,positionN) == false
			  
			 puts "Player #{@mark} inform position m(mxn) "
			     positionM = gets.chomp.to_i
			 puts "Player #{@mark} inform position n(mxn) "
				 positionN = gets.chomp.to_i
		end

	     return positionM,positionN

	end
	
	def getHumanity
		return true
	end

	def positionAvailable?(board,m,n)
		if board.getPosition(m,n) == "-"
			return true
		else
			return false
		end
	end
end 