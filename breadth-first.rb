class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def level_order(trunk)
    result = []
    return result if trunk.nil?

    queue = []
    queue << trunk

    until queue.empty?
      level_size = queue.length
      level = []
      level_size.times do
        node = queue.shift
        level << node.val
        queue << node.left unless node.left.nil?
        queue << node.right unless node.right.nil?
      end
      result << level      
    end
    result
  end

end
  
    # The "Leafs" of a tree, elements that have no children
    deep_fifth_node = Tree.new(5, [])
    eleventh_node = Tree.new(11, [])
    fourth_node   = Tree.new(4, [])

    # The "Branches" of the tree
    ninth_node = Tree.new(9, [fourth_node])
    sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
    seventh_node = Tree.new(7, [sixth_node])
    shallow_fifth_node = Tree.new(5, [ninth_node])

    # The "Trunk" of the tree
    trunk = Tree.new(2, [seventh_node, shallow_fifth_node])




