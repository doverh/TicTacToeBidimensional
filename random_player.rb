class Random_player

	 attr_accessor :mark

	 def initialize(mark)
	 	@mark = mark
	 end

	def getMove(board,m,n)
		positionM = Random.rand(0..m-1)
		positionN = Random.rand(0..n-1)
		while positionAvailable?(board,positionM,positionN) == false
			positionM = Random.rand(0..m-1)
			positionN = Random.rand(0..n-1)
		end
		return positionM, positionN

	end
		
	def getHumanity
		return false
	end	

	def positionAvailable?(board,m,n)
		if board.getPosition(m,n) == "-"
			return true
		else
			return false
		end
	end

end





