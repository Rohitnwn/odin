require './connect_four.rb'

describe "ConnectFour" do


  describe "#new" do

    context "without argument" do
      before :each do
        new_game = ConnectFour.new
      end

      it "starts game with default names" do
        expect(new_game.player1).to eq("player1")
        expect(new_game.player2).to eq("player2")
      end

      it "returns empty array initialy" do
      expect(new_game.array).to eq([[]])
      end
    end

    context "with arguments" do
      before :each do
        @new_game = ConnectFour.new "rohit", "rahul"
      end

      it "starts game with given players name" do
        expect(@new_game.player1).to eq("rohit")
        expect(@new_game.player2).to eq("rahul")
      end
    end
  end


  # # describe ".game_over" do
  # #   it "returns game draw if array is full" do
  # #     @array = [[1,2,3,4,5,6,7], [1,2,3,4,5,6,7], [1,2,3,4,5,6,7], [1,2,3,4,5,6,7],
  # #              [1,2,3,4,5,6,7], [1,2,3,4,5,6,7], [1,2,3,4,5,6,7]]
  # #     t = gameover
  # #     expect(t).to eq("Game over, it's draw, no one wins")
  # #   end
  # end



end
