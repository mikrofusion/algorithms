#!/usr/bin/ruby

def fibonacci_recursive(limit, count, first, second)
  if count == limit then return [first + second] end

  [first + second].concat fibonacci_recursive(limit, count + 1, second, first + second)
end

def fibonacci(limit)
  [1, 1].concat fibonacci_recursive(limit, 0, 1, 1)
end
puts "#{fibonacci(20)}"
