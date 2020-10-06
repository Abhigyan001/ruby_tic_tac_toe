require_relative '../lib/board'
require_relative '../lib/player'

describe Board do 
  new_board = Board.new
  describe "#display_board" do
    it "display the current board state" do
      expect(new_board.display_board).to_not eql "  | X |  "
    end
    it "display the current board state" do
      expect(new_board.display_board).to eql "  |   |  \n--|---|--\n  |   |  \n--|---|--\n  |   |  "
    end
  end
  describe "#user_input" do
    it "returns the current user input location" do
      expect(new_board.user_input(1)).to_not eql "O"
    end
    it "returns the current user input location" do
      expect(new_board.user_input(1)).to eql " "
    end
  end
  describe "#user_input" do
    it "returns the current user input location" do
      expect(new_board.user_input(1)).to_not eql "O"
    end
    it "returns the current user input location" do
      expect(new_board.user_input(1)).to eql " "
    end
  end
  describe "#input_pos" do
    it "returns the updated position for value 0" do
      expect(new_board.input_pos(0, 'X')).to_not eql "  | X |  \n--|---|--\n  |   |  \n--|---|--\n  |   |  "
    end
    it "returns the updated position for value 5" do
      expect(new_board.input_pos(5, 'X')).to eql "  |   |  \n--|---|--\n  | X |  \n--|---|--\n  |   |  "
    end
  end
end  