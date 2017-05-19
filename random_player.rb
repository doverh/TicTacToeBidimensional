class Random_player

	 attr_accessor :mark

	 def initialize(mark)
	 	@mark = mark
	 end

	def getMove(board)
		position[Random.rand(0..m)][Random.rand(0..n)] = "O" 
		while positionAvailable?(board,position)== false
			position[Random.rand(0..m)][Random.rand(0..n)] = "O" 
		end
		return position

	end
		
	def getHumanity
		return false
	end	

	def positionAvailable?(board,m,n)
		if board[m][n] == "-"
			return true
		else
			return false
		end
	end

end





