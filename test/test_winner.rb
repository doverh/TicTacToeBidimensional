require 'minitest/autorun'
require_relative '../board.rb'
#require_relative '../player.rb'
# require_relative 'game.rb'
# require_relative 'random.rb'
require_relative '../human_player.rb'
require_relative '../random_player.rb'



class TestBoard < Minitest::Test

	 def test_for_3x3Board_diagonal
	 	board = Board.new(3,3)
	 	player1 = Human_player.new("X")	
		player2 = Random_player.new("O")	
	 	board.setPosition(player1,0,0)
	 	board.setPosition(player2,0,1)
	 	board.setPosition(player1,1,1)
	 	board.setPosition(player2,0,2)
	 	board.setPosition(player1,2,2)
	 	board.printBoard
	 	assert_equal(true, board.check_winner(player1))
	 end


	 def test_for_3x3Board_line
	 	board = Board.new(3,3)
	 	player1 = Human_player.new("X")	
		player2 = Random_player.new("O")	
	 	board.setPosition(player1,0,0)
	 	board.setPosition(player2,0,1)
	 	board.setPosition(player1,1,0)
	 	board.setPosition(player2,0,2)
	 	board.setPosition(player1,2,0)
	 	board.printBoard
	 	assert_equal(true, board.check_winner(player1))
	 end

 def test_for_3x3Board_tie
	 	board = Board.new(3,3)
	 	player1 = Human_player.new("X")	
		player2 = Random_player.new("O")	
	 	board.setPosition(player1,0,0)
	 	board.setPosition(player2,1,0)
	 	board.setPosition(player1,2,0)
	 	board.setPosition(player2,0,1)
	 	board.setPosition(player1,1,1)
	 	board.setPosition(player1,2,1)
	 	board.setPosition(player2,0,2)
	 	board.setPosition(player1,1,2)
	 	board.setPosition(player2,2,2)
	 	board.printBoard
	 	assert_equal(0..2, board.check_winner(player1))
	 end




	 def test_for_4x4Board
	 	board = Board.new(4,4)
	 	player1 = Human_player.new("X")	
		player2 = Random_player.new("O")	
	 	board.setPosition(player1,0,0)
	 	board.setPosition(player2,0,1)
	 	board.setPosition(player1,1,1)
	 	board.setPosition(player2,0,2)
	 	board.setPosition(player2,1,2)
	 	board.setPosition(player1,2,2)
	 	board.setPosition(player2,1,0)
	 	board.setPosition(player1,3,3)
	 	board.printBoard
	 	assert_equal(true, board.check_winner(player1))
	 end

end
