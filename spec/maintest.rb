require_relative '../bin/main'
require_relative '../lib/player'



describe "#name_check" do
    
    it "returns capitalize names that are not blank " do 
        player1 = Player.new
        player1_name = "abhi"
             
        expect(name_check).to eql("Abhi")
    end
    
end
