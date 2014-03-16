#!/usr/bin/ruby

class Array

  def reverse_recursive(arr)
    if arr.length == 1 then return arr end
    a = arr.shift
    reverse_recursive(arr) << a
  end

  def reverse
    reverse_recursive(self)
  end
end

puts "original array: #{ARGV.inspect}"
puts "reversed array:   #{ARGV.reverse.inspect}"
