#!/usr/bin/ruby

class Array
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
  end

  def bubble_sort!
    begin
      did_sort = false
      self.each.with_index do |v1, index|
        v2 = self[index+1]

        if v2 and v2 < v1
          self.swap!(index, index+1)
          did_sort = true
        end
      end
    end while did_sort
  end
end

puts "original array: #{ARGV.inspect}"
ARGV.bubble_sort!()
puts "sorted array:   #{ARGV.inspect}"
