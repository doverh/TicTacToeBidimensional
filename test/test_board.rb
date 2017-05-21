require 'minitest/autorun'
require_relative '../board.rb'




class TestBoard < Minitest::Test

	 def test_for_3x3Board
	 	board = Board.new(3,3)
	 	result = [['-','-','-'],['-','-','-'],['-','-','-']]
	 	assert_equal(result, board.board_table)
	 end


	 def test_for_4x4Board
	 	board = Board.new(4,4)
	 	result = Array.new(4,'-'){ Array.new(4,'-')}
	 	assert_equal(result, board.board_table)
	 end

	  def test_printBoard_4_x_4
	 	board = Board.new(4,4)
	 	board.printBoard
	  end

	  def test_printBoard_27_x_27
	 	board = Board.new(27,27)
	 	board.printBoard
	  end


end
