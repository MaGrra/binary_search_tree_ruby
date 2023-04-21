class Tree
attr_accessor :root

    def initialize(array)
        @root = build_tree(array)
    end

    def build_tree(array)
        return nil if array.nil? || array.empty?

        mid = (array.length) / 2
        root_node = Node.new(array[mid])

        root_node.left = build_tree(array[0, mid])
        root_node.right = build_tree(array[(mid + 1)..-1])

        root_node
    end
    def pretty_print(node = @root, prefix = '', is_left = true)
        pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
        puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
        pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
      end
    
end