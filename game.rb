class Game

	# allow read  && write
	attr_accessor :board_table 

def initialize(board)
	@board_table = board
end


# def playhuman(board_table,position,player1,player2,turn)
		
# 		#Check if player X turn player 1 plays 		
# 	   		if turn == 'X'
# 	   	 		#Check if there any move left 	
# 	   			if  board_table.results(board_table,player1,player2) == ""
#              		if player1.positionAvailable?(board_table.getBoard(),position) == true
#                 		board_table.setPosition(player1,position)
#                		end
#                		#CHECK IF PLAYER 1 WON
#             		if board_table.check_winner(player1) == true ||  board_table.anyMoveLeft?() == false
#                 		board_table.finishBoard
#             		end
#        			end 
    		
# 		# else if O turn, player 2 plays 		
# 	   		else	#Check if there any move left 	
# 	   			if  board_table.results(board_table,player1,player2) == ""
#             		#Check if the player is human
#             		if player2.positionAvailable?(board_table.getBoard(),position) == true
#   		   				board_table.setPosition(player2,position)
#  	 				end
#  	 			end
#             #CHECK IF PLAYER 2 WON
#  	 			if board_table.check_winner(player2) == true ||  board_table.anyMoveLeft?() == false
# 					board_table.finishBoard
#         	    end
#       		end
#       	return board_table
#   end    	

#if flag is not human
def playAi(board_table,player1,player2)
	   
		loop do 
			#call the method set position returning player and position
			positionM,positionN = player1.getMove(board_table,board_table.getm,board_table.getn)
			# if player1.positionAvailable?(board_table,positionM, positionM) == true
                	board_table.setPosition(player1,positionM, positionN)
            # end
			break if  board_table.check_winner(player1) == true#board_table.anyMoveLeft?() == false #|| 
			board_table.printBoard()
		puts ""
			positionM,positionN = player2.getMove(board_table,board_table.getm,board_table.getn)
			# if player2.positionAvailable?(board_table,positionM, positionM) == true
                	board_table.setPosition(player2,positionM, positionN)
            # end
            break if board_table.check_winner(player2) == true#||   board_table.anyMoveLeft?() == false 
		end
		board_table.printBoard()
		puts ""
		#return results()
	end
end