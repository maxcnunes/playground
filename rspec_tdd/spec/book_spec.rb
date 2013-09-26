require 'spec_helper'

describe Book do

  before :each do
    @book = Book.new "Title", "Author", :category
  end

  describe "#new" do
    it "takes three parameters and returns a Book object" do
      @book.should be_an_instance_of Book
    end

    it "returns the correct title" do
      @book.title.should eql "Title"
    end

    it "returns the correct author" do
      @book.author.should eql "Author"
    end

    it "returns the correct category" do
      @book.category.should eql :category
    end
  end
end
