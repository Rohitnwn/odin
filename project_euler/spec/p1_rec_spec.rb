require "spec_helper.rb"

describe "#multiples" do

  it "returns empty array for number below 3" do
     multiples(2).should == []
   end

end
