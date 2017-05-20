require 'minitest/autorun'
require_relative '../board.rb'
require_relative '../human_player.rb'
require_relative '../game.rb'
require_relative '../random_player.rb'
require_relative '../sequential_player.rb'
require_relative '../unbeatable_player.rb'




class TestGame < Minitest::Test

	# #test when playing again RandomAI 
	# def test_game_Random_level
	# 	board = Board.new(3,3)
	# 	player1 = Random_player.new("X")	
	# 	player2 = Random_player.new("O")	
	# 	game = Game.new(board)		
	# 	board = game.playAi(board,player1,player2)	
	# end

	def test_game_Sequential_level
		board = Board.new(6,6)
		player1 = Random_player.new("X")	
		player2 = Sequential_player.new("O")	
		game = Game.new(board)		
		board = game.playAi(board,player1,player2)	
	end

	# end

	# # def test_game_Human_Unbeatable_player
	# 	game = Game.new(Human_player,Unbeatable_player,3)
	# 	assert_equal("We have a draw", game.play())
	# end


	# def test_game_Unbeatable_player
	# 	game = Game.new(Unbeatable_player,Unbeatable_player,3)
	# 	assert_equal("We have a draw", game.play())
	# end


	# def test_game_Human_X_Human_player
	# 	game = Game.new(Human_player,Human_player,3)
	# 	assert_equal("We have a draw", game.play())
	# end

end

	
