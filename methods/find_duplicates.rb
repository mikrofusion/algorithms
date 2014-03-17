#!/usr/bin/ruby

def find_duplicates(arr) # O(n)
  hash = Hash.new(0)
  duplicates = []

  arr.each do |val|
    if hash.has_key? val and hash[val] == 1 then duplicates.push val end
    hash[val] += 1
  end

  duplicates.map { |x| "#{x} appears #{hash[x]} times" }
end

arr = [1, 3, 2, 5, 6, 6, 7, 3, 3]
puts "#{find_duplicates(arr)}"
