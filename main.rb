require_relative './lib/node'
require_relative './lib/tree'

puts 'Hello there'
raw_array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324].sort.uniq

the_tree = Tree.new(raw_array)

p raw_array
p the_tree
puts 'OG Tree'
the_tree.pretty_print

puts 'Insert'
the_tree.insert(17)
the_tree.pretty_print

puts 'Delete'
the_tree.delete(4)
the_tree.pretty_print

puts 'Find'
puts the_tree.find(5)

puts 'Level order'
the_tree.lvl_ord_loop

puts "\nIn order\n"
the_tree.inOrder

puts "\nPreOrder"
the_tree.preOrder

puts "\nPost order"
the_tree.postOrder

puts "\n Height"
p the_tree.height(the_tree.find(8))

puts "\n Depth"
p the_tree.depth(the_tree.find(8))

puts "\n Balance"
p the_tree.balanced?

puts "\nThis is new tree \n"

new_tree = Tree.new(the_tree.inOrder)
new_tree.pretty_print

puts " Tie it all together "

final_tree = Tree.new(Array.new(15) { rand(1..100) })
p final_tree.balanced?

final_tree.preOrder
print "\n"
final_tree.inOrder
print "\n"
final_tree.postOrder
print "\n"

final_tree.insert(102)
final_tree.insert(112)
final_tree.insert(122)
final_tree.insert(109)

final_tree.pretty_print
p final_tree.balanced?
final_tree = Tree.new(final_tree.inOrder)
puts " "
final_tree.pretty_print
