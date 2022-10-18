#!/usr/bin/env ruby
# This is a ruby script that accepts one argument and pass it to a regular
# expresion method

arg=ARGV[0]

lists = arg.scan(/hbt{1,4}n/)
for list in lists do
  print list
end
puts ''
