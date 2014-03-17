#!/usr/bin/ruby

def pi_recursive(depth, count, i)
  if count >= depth then return 0 end

  r = 4.0 / (i..(i + 2)).to_a.inject(1) { |sum, x| sum * x }
  pi_recursive(depth, count + 1, j + 2) +
    if count % 2 == 1 then + r else - r end
end

def pi(depth) # using Nilakantha series
  pi_recursive(depth, 1, 2) + 3
end

puts "#{pi(1000)}"
