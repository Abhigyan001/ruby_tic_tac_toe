class Board	
  attr_accessor :board
  attr_reader :inputs
  
  def initialize
		@board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
		@inputs = 0
	end
	
	def display_board
		puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
		puts "--|---|--"
		puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
		puts "--|---|--"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
	end

	# check for row,column, and diagonal match
	
	def check_win(input)
    win_conditions = [
      [@board[0], @board[1], @board[2]],
			[@board[3], @board[4], @board[5]],
			[@board[6], @board[7], @board[8]],
			[@board[0], @board[3], @board[6]],
			[@board[1], @board[4], @board[7]],
			[@board[2], @board[5], @board[8]],
			[@board[0], @board[4], @board[8]],
			[@board[2], @board[4], @board[6]]      
		]
	end

	def user_input(arg)
    assigned_place = @board[0] if arg == 1
    assigned_place = @board[1] if arg == 2
    assigned_place = @board[2] if arg == 3
    assigned_place = @board[3] if arg == 4
    assigned_place = @board[4] if arg == 5
    assigned_place = @board[5] if arg == 6
    assigned_place = @board[6] if arg == 7
    assigned_place = @board[7] if arg == 8
    assigned_place = @board[8] if arg == 9
    assigned_place
  end

  def input_pos(arg, input)
    @board[0] = input if val == 1
    @board[1] = input if val == 2
    @board[2] = input if val == 3
    @board[3] = input if val == 4
    @board[4] = input if val == 5
    @board[5] = input if val == 6
    @board[6] = input if val == 7
    @board[7] = input if val == 8
    @board[8] = input if val == 9
    @inputs += 1
    display_board
  end
end