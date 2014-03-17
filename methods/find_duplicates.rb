#!/usr/bin/ruby

def find_duplicates(arr) # O(n)
  hash = {}
  duplicates = []

  arr.each do |val|
    if hash.has_key? val then duplicates.push val end
    hash[val] = true
  end

  duplicates
end

arr = [1, 3, 2, 5, 6, 6, 7]
puts "#{find_duplicates(arr)}"
