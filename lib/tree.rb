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

    def insert(value, node = root)
        return nil if value == node.value

        if value < node.value
            node.left.nil? ? node.left = Node.new(value) : insert(value, node.left)
        else value > node.value
            node.right.nil? ? node.right = Node.new(value) : insert(value, node.right)
        end
    end

    def delete(value, node = root)
        return node if node.nil?

        if value < node.value
            node.left = delete(value, node.left)
        elsif value > node.value
            node.right = delete(value, node.right)
        elsif value == node.value
            if node.left.nil? && node.right.nil?
                node = nil
            elsif node.left.nil?
                node = node.right
            elsif node.right.nil?
                node = node.left
            else
            min_node = find_min(node.right)
            node.value = min_node.value
            node.right = delete(min_node.value, node.right)
        end
    end
    node
end
    def find_min(node)
        while node.left
            node = node.left
        end
        node
    end

    def find (value, node = root)
        return node if node.nil?
        return node if value == node.value
        return "No node" if node.left.nil? && node.right.nil?

        if value < node.value
             find(value, node.left)
        elsif value > node.value
             find(value, node.right)
        end
    end

    
    def lvl_ord_loop
        queue = [@root]
        result = []
        loop do
            node = queue.shift
            block_given? ? yield(node) : result << node.value
            queue.push(node.left) unless node.left.nil?
            queue.push(node.right) unless node.right.nil?
            break if queue.empty?
        end
            print result
    end

    def inOrder(node = root)
        return if node.nil?

        inOrder(node.left)
        print " #{node.value}"
        inOrder(node.right)
    end

    def level_order (node = root, queue = [])
        print "#{node} and the value #{node.value} \n"

        queue << node.left unless node.left.nil?
        queue << node.right unless node.right.nil?
        return if queue.empty?

        level_order(queue.shift, queue)
    end

    def preOrder(node = root)
        return if node.nil?

        print " #{node.value}"
        preOrder(node.left)
        preOrder(node.right)
    end

    def postOrder(node = root)
        return if node.nil?

        postOrder(node.left)
        postOrder(node.right)
        print " #{node.value}"
    end

    def height(node = root)
        if node.nil?
          -1
        else
          node = find(node) if node.is_a?(Integer)
          left = height(node.left)
          right = height(node.right)
          if left > right
            1 + left
          else
            1 + right
          end
        end
      end
    


    def pretty_print(node = @root, prefix = '', is_left = true)
        pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
        puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
        pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
      end
    
end