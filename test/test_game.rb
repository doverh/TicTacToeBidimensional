require 'minitest/autorun'
require_relative '../board.rb'
require_relative '../human_player.rb'
require_relative '../game.rb'
require_relative '../random_player.rb'
require_relative '../sequential_player.rb'
require_relative '../unbeatable_player.rb'




class TestGame < Minitest::Test

	# def test_game_Sequential_level
	# 	board = Board.new(6,6)
	# 	player1 = Random_player.new("X")	
	# 	player2 = Sequential_player.new("O")	
	# 	game = Game.new(board)		
	# 	board = game.play(board,player1,player2)	
	# end

	def test_game_Human_sequential
		board = Board.new(3,3)
		player1 = Random_player.new("X")	
		player2 = Human_player.new("O")	
		game = Game.new(board)		
		board = game.play(board,player1,player2)	
	end	

end

	
