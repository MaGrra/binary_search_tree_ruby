require_relative './lib/node'
require_relative './lib/tree'

puts "Hello there"
raw_array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324].sort.uniq

the_tree = Tree.new(raw_array)

p raw_array
p the_tree

the_tree.pretty_print

