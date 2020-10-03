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
end