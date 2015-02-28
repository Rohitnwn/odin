require './enumerable_methods'

describe "Enumerable" do

  describe "#my_each" do

    context  "without block" do
      it "returns  object itself" do
        expect([1, 2, 3].my_each).to eq([1, 2, 3])
      end
    end

    context "with block " do
      it "returns resulted object produced after block operation" do
        b = []
        [1, 2, 3].my_each {|x| b << x+2 }
        expect(b).to eq([3, 4, 5])
      end
    end
  end

  describe "#my_each_with_index" do
    it "returns resulted object produced after block operation" do
        b = []
        [1, 2, 3].my_each_with_index { |x, i| b << x if i == 0 }
        expect(b).to eq([1])
    end
  end

  describe "#my_select" do
    it "returns resulted object produced after block operation" do
        expect([1, 2, 3].my_select {|x| x > 1 }).to eq([2, 3])
    end
  end


end
