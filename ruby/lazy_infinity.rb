#ruby 2.0
(1..Float::INFINITY)
  .lazy
  .collect { |x| x*x }
  .collect { |x| x+1 }
  .take(10).force
