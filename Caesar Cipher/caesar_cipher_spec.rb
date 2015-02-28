require './caesar_cipher'

describe "caesar_cipher" do

  context "without argument" do
    it "raises argument error for invalid argument" do
      expect { caesar_cipher() }.to raise_error ArgumentError
    end
  end

  context "with arguments" do
    it "returns coded value" do
      expect(caesar_cipher("what is string", 4)).to eq("alex$mw$wxvmrk")
    end
  end

end

