class Node
  attr_accessor :left, :right, :val
  def initialize (val,left, right)
    @val = val
    @left = left
    @right = right
  end
end

class Tree
  attr_accessor :root
  def initialize ()
    @root = nil
  end

  def add(n)
    node = Node.new(n,nil,nil)
    @root = add_loop(@root, node)
  end

  def add_loop(root, node)
    if !root
      return node
    end

    if node.val < root.val
      if !root.left
        root.left = node
      else
        add_loop(root.left, node)
      end
    else
      if !root.right
        root.right = node
      else
        add_loop(root.right, node)
      end
    end
    root
  end

  def preorder(root)
      if root
        preorder(root.left)
        p(root.val)
        preorder(root.right)
      end
  end

  def iter(start)
    visited = []
    q = [start]
    while !q.empty?
      v = q.pop
      next if visited.include?(v)
      visited << v
      next unless (edges = [root.left,root.right])
      p edges
      edges.each do |edge|
        next if visited.include?(edges[edge])
	      q.push(edges[edge])
      end
    end
    false
  end
end

tree = Tree.new()

count = 10
for i in 1..count
  tree.add(i)
end

# tree.preorder(tree.root)
tree.iter(tree.root.val)