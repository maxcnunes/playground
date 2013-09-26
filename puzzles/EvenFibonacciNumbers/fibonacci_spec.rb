require_relative 'fibonacci'

describe "fibonacci", "#" do
  it "returns [1, 2, 3, 5, 8, 13, 21, 34, 55, 89] to fibonacci of 10 numbers" do
    result = fibonacci(10)
    result.should =~ [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  end

  it "returns [1, 2, 3, 5, 8, 13] to fibonacci with max value: 13" do
    result = fibonacci_by_max_value(13)
    result.should =~ [1, 2, 3, 5, 8, 13]
  end

  it "returns 9227463 to sum of  fibonacci with max value: 4000000" do
    result = fibonacci_by_max_value(4000000)
    (result.reduce {|sum,n| sum +(n.even? ? n : 0) }).should eql(4613733)
  end

  it "returns 9227463 to sum of  fibonacci with max value: 4000000" do
    result = sum_all_even_fibonacci_by_max_value(4000000)
    result.should eql(4613733)
  end
end
