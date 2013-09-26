def collect(range, &block)
  result = []
  range.each do |x|
    result << block.call(x)
  end
  result
end

collect (1..10) { |item| puts item }
