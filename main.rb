require_relative './lib/node'
require_relative './lib/tree'

puts "Hello there"
raw_array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324].sort.uniq

the_tree = Tree.new(raw_array)

p raw_array
p the_tree
puts "OG Tree"
the_tree.pretty_print

puts "Insert"
the_tree.insert(17)
the_tree.pretty_print

puts "Delete"
the_tree.delete(4)
the_tree.pretty_print

puts "Find"
puts the_tree.find(5)

puts "Level order"
the_tree.level_order
