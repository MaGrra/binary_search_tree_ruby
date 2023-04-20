class Tree
attr_accessor :root

    def initialize
        @root = nil
    end

    def build_tree(array, node = @root, start = 0, tail = array.length, mid = array.length/2)
        return nil if start > tail

        @root = Node.new(array[mid], array[mid - 1], array[mid + 1]) if !@root
        node = Node.new(array[mid], array[mid - 1], array[mid + 1]) if !@root

        
    end

    def build_left

    end
    
end