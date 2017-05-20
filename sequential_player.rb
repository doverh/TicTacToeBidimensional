class Sequential_player

	attr_accessor :mark

	 def initialize(mark)
	 	@mark = mark
	 end

	def getMove(board)
	
		m,n = getNextAvailablePosition(board)
		while positionAvailable?(board,position) == false
				position = getNextAvailablePosition(board)
		end
		return position
	end


	def positionAvailable?(board,m,n)
		if board[m][n] == "-"
			return true
		else
			return false
		end
	end


	def getHumanity
		return false
	end


	def getNextAvailablePosition(board)
		m,n = board.index("-")
	end


end