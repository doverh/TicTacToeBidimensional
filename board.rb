class Board

	# allow read  && write
	attr_accessor :board_table

	#Create an empty array as a board
	def initialize(m,n)
		@m = m
		@n = n
		@board_table = Array.new(m,"-"){Array.new(n,"-")}
	end

	def getLineBoardDimension
		return @num
	end	
		
	def setPosition(player, m,n)
		board_table[m][n] = player.mark
		return board_table
	end


	def getPosition(m,n)
		return board_table[m][n]
	end	

	#Method to print a dinamic board on screen. 
	#Num represents one side of the dimension, for example num=4 for 4X4 board
	def printBoard
		
		for i in 0..@m
			for j in 0..@n
				puts "#{i}#{j}"

				p"#{@board_table[i][j]}|"
			end	
		end
	end

    
    #Check for a winner

    # def getLength(player,x,y,k)
    # 	length = 0

    # 	for q in 2..k
    # 		for r in 2..k
    # 			if board_table[q*x][q*y] == player.mark
    # 				length+=1
    # 			end
    # 			r++
    # 		end
    # 		q++
    # 	end

    # 	return length	
    # end


	# def check_winner(player,k,position)


	# 	#line
	# 	for i in 0..m-1
	# 		#column
	# 		for j in 0..n-1
	# 		l1 = getLength(player)  	
	# 		end
	# 	end

	# end


	#Check if its position available
	def anyMoveLeft?
		if board_table.include?("-")
			return true
		else
			return false
		end

	end

	def getIndexat(position)
		return board_table[position]	
	end

	def isBoardFull
		!board_table.include?("-")
	end
	
	def finishBoard
		while board_table.include?("-")
		 position = board_table.index("-")	
		 board_table[position] = "/"
		end
	end
		
	def getBoard()
		return board_table
	end

	#show results
	def results(board,player1,player2)
		if board.check_winner(player1) == true
			finalResult = "Player 1 won!"
		elsif board.check_winner(player2) == true
			finalResult = "Player 2 won!!"
		elsif
			board.isBoardFull == true
			finalResult = "We have a tie!"
		else 
			finalResult = ""
		end
	return finalResult
	end
end	