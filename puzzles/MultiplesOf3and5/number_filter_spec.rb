require_relative 'number_filter'

describe NumberFilter, "#initlize" do
  it "with no parameters" do
    number_filter = NumberFilter.new
    number_filter.should be_an_instance_of NumberFilter
  end

  it "with 10 numbers to filter as parameter" do
    number_filter = NumberFilter.new (0..10).to_a
    number_filter.should be_an_instance_of NumberFilter
  end
end

describe NumberFilter, "#multiples of 3 and 5 less than 10" do
  before :each do
    @number_filter = NumberFilter.new (0...10).to_a
  end

  it "should return 10 numbers when get all numbers to filter" do
    @number_filter.should have(10).numbers
  end

  it "should return 4 numbers when get all multiple numbers" do
    # 3, 5, 6 and 9
    @number_filter.should have(4).multiple_numbers
  end

  it "should return 23 when sum all multiple numbers" do
    @number_filter.multiple_numbers_sum.should eql(23)
  end
end


describe NumberFilter, "#multiples of 3 and 5 less than 1000" do
  before :each do
    @above_1000 = 1000
    @number_filter = NumberFilter.new (0...@above_1000).to_a
  end

  it "should return 1000 numbers when get all numbers to filter" do
    @number_filter.should have(@above_1000).numbers
  end

  it "should return 233168 when sum all multiple numbers" do
    @number_filter.multiple_numbers_sum.should eql(233168)
  end
end
