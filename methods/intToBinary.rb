#!/usr/bin/ruby

def intToBinary(num)
  result = ""
  while num > 0
    remainder = num % 2
    result = remainder.to_s + result
    num /= 2
  end
  result
end

puts "#{intToBinary(5)}"
