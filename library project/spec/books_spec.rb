require 'spec_helper'

describe Book do

  before :each do
    @book = Book.new "Title", "Author", :category
  end

  describe "#new" do

    it "return instance of book class" do
      expect(@book).to be_an_instance_of Book
    end

    it "throws an ArgumentError when given less than 3 parameters" do
      expect(lambda { Book.new "Title", "Author" }).to raise_exception ArgumentError
    end

  end

  describe "#title" do
    it "returns the book title" do
      expect(@book.title).to eq "Title"
    end
  end

  describe "#Author" do
    it "returns the book author" do
      expect(@book.author).to eq "Author"
    end
  end

  describe "#category" do
    it "returns the book category" do
      expect(@book.category).to eq :category
    end
  end

end
