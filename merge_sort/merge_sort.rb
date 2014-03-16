#!/usr/bin/ruby

class Array
  def split(arr)
    half = (arr.size / 2.0).round
    arr.each_slice(half).to_a
  end

  def combine(left, right)
    result = []

    while (not left.empty?) or (not right.empty?)
      result << if left.empty?
                  right.shift
                elsif right.empty? or left.first.to_f < right.first.to_f
                  left.shift
                else
                  right.shift
                end
    end
    result
  end

  def merge(arr)
    return arr if arr.length == 1

    arr = split arr
    left = merge arr[0]
    right = merge arr[1]
    combine left, right
  end

  def merge_sort()
    self.replace merge(self)
  end
end


puts "original array: #{ARGV.inspect}"
ARGV.merge_sort
puts "sorted array:   #{ARGV.inspect}"
