def fibonacci(numbers)
  (1..numbers)
  .each_with_index
  .inject([]) { |result, (num, i)|
    result << (result.at(i-1) || 1) + (result.at(i-2) || 0)
  }
end

def fibonacci_by_max_value(max_val)
  (1..Float::INFINITY)
  .each_with_index
  .inject([]) { |result, (num, i)|
    new_val = (result.at(i-1) || 1) + (result.at(i-2) || 0)
    return result if new_val > max_val
    result << new_val
  }
end

def sum_all_even_fibonacci_by_max_value(max_val)
  (1..Float::INFINITY)
  .each_with_index
  .inject([]) { |result, (num, i)|
    val = (result.at(i-1) || 1) + (result.at(i-2) || 0)
    break result if val > max_val
    result << val
  }.reduce {|sum,n| sum +(n.even? ? n : 0) }
end
