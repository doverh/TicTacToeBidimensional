class Sequential_player

	attr_accessor :mark

	 def initialize(mark)
	 	@mark = mark
	 end

	def getMove(board,m,n)
	
		positionM,positionN = getNextAvailablePosition(board,m,n)
		while positionAvailable?(board,positionM,positionN) == false
				positionM,positionN = getNextAvailablePosition(board)
		end
		return positionM,positionN
	end


	def positionAvailable?(board,m,n)
		if board.getPosition(m,n) == "-"
			return true
		else
			return false
		end
	end


	def getHumanity
		return false
	end


	def getNextAvailablePosition(board,m,n)
		for i in 0..m 
			for j in 0..m
				if board.getPosition(i,j) == "-"
					return i,j
				end
			end
		end
	end			


end