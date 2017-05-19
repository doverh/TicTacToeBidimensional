require 'minitest/autorun'
require_relative '../board.rb'
require_relative '../human_player.rb'
require_relative '../game.rb'
require_relative '../random_player.rb'
require_relative '../sequential_player.rb'
require_relative '../unbeatable_player.rb'




class TestGame < Minitest::Test

	#test when playing again RandomAI 
	def test_game_Random_level
		board = Board.new(3,3)
		player1 = Human_player.new("X")	
		player2 = Random_player.new("O")	
		game = Game.new(board)		
		assert_equal("Player1 won", game.playAi(board,player1,player2))
	end

	# def test_game_Sequential_Unbeatable
	# 	board = Board.new(3)
	# 	player1 = Human_player.new("X")
	# 	player2 = Human_player.new("O")
	# 	game = Game.new(board)
	# 	board = game.play(board,0,player1,player2,"X","human")
	# 	board = game.play(board,3,player1,player2,"O","human")
	# 	board = game.play(board,6,player1,player2,"X","human")
	# 	board = game.play(board,0,player1,player2,"O","human")
	# 	board = game.play(board,2,player1,player2,"X","human")
	# 	assert_equal("Player 1 won!",board.results(board,player1,player2))
         

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

	
