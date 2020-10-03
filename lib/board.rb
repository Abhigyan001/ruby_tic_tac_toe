class Board	
  attr_accessor :board
  attr_reader :inputs
  
  def initialize
		@board = [
			[' ', ' ', ' '],
			[' ', ' ', ' '],
			[' ', ' ', ' ']
		]
		@inputs = 0
	end
	
	def display_board
		puts "#{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
		puts "----------------|-----------------|----------------"
		puts "#{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
		puts "----------------|-----------------|----------------"
    puts "#{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
	end
	
	def check_win(input)
    win_conditions = [
      [@board[0][0], @board[0][1], @board[0][2]],
      [@board[1][0], @board[1][1], @board[1][2]],
      [@board[2][0], @board[2][1], @board[2][2]],
      [@board[0][0], @board[1][0], @board[2][0]],
      [@board[0][1], @board[1][1], @board[2][1]],
      [@board[0][2], @board[1][2], @board[2][2]],
      [@board[0][0], @board[1][1], @board[2][2]],
      [@board[0][2], @board[1][1], @board[2][0]]
		]
	end
end