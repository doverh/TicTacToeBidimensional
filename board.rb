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
	def printBoard
		
		for i in 0..@m -1 
			for j in 0..@n -1
				print"#{@board_table[i][j]}|"
			end	
			puts ""
		end
	end

	def getm
		return @m
	end
    
   	def getn
   		return @n
   	end

    def getLength(player,i,j,x,y,k)#(player,0,0,-1,-1,3)
    	length = 0
    	#check if position itself is populated
    	if board_table[i][j] == player.mark
    		length+=1
		end			
		# puts "i = #{i} j = #{j}" 
		# puts "x = #{x} j = #{y}"
    	for q in 1..k -1
    		 #for r in 1..k -1
    		 	s = i + x * q 
    		 	t = j + y * q
    		 	# puts "s = #{s} t = #{t}" 
    		 	if s >= 0 && s < k && t >= 0 && t < k 
    				
    				if board_table[s][t] == player.mark
    					length+=1
    				end
    			end
    			#  r+=1
    		 # end
    		q+=1
    	end
    	#puts "length=#{length}"
    	return length	
    end

    #check winner based on the position and number of necessary spaces occupied(K)
    #Check each space around the position and spaces around(getLenght) 
	def check_winner(player)
		k = @m
		#line
		for i in 0..@m-1
			#column
			for j in 0..@n-1
			l1 = getLength(player,i,j,-1,-1, k)
				#puts "l1 #{l1}"
				if l1 == k
					return true
					
				end
			l2 = getLength(player,i,j,-1,0,k)
				#puts "l2 #{l2}"

				if l2 == k
					return true
				end
			l3 = getLength(player,i,j,-1,1,k)
					#puts "l3 #{l3}"

				if l3 == k
					return true
				end
			l4 = getLength(player,i,j,0,-1,k)
					#puts "l4 #{l4}"

				if l4 == k
					return true
				end
			l5 = getLength(player,i,j,0,1,k)
					#puts "l5 #{l5}"

				if l5 == k
					return true
				end
			
			l6 = getLength(player,i,j,1,-1,k)
					#puts "l6 #{l6}"

				if l6 == k
					return true
				end
			l7 = getLength(player,i,j,1,0,k)
					#puts "l7 #{l7}"

				if l7 == k
					return true	
				end	
			l8 = getLength(player,i,j,1,1,k)
					#puts "l8 #{l8}"

				if l8 == k
					return true	
				end
			end
		end

	end


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