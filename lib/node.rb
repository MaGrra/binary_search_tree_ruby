class Node
    include Comparable

  attr_accessor :left_node, :right_node
  attr_reader   :value

  def initialize(value = nil, left = nil, right = nil)
    @value = value
    @left = left
    @right= right
  end
end
