class NumberFilter
  attr_accessor :numbers

  def initialize numbers=[]
    @numbers = numbers
  end

  def multiple_numbers
    @numbers.select { |n| n > 0 && (n % 3 == 0 || n % 5 == 0) }
  end

  def multiple_numbers_sum
    all = multiple_numbers
    all.reduce :+
  end
end
