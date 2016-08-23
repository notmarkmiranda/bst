require './lib/node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root=nil)
    @root = root
  end

  def insert(rating, title)
    node = Node.new(rating, title)
    if root == nil
      @root = Node.new(rating, title)
      return 0
    else
      push(node)
    end
  end

  def push(node, current = @root, depth = 1)
    if (node.rating < current.rating) && current.left
      depth += 1
      current = current.left
      push(node, current, depth)
    elsif (node.rating < current.rating) && current.left.nil?
      current.left = node
    elsif (node.rating > current.rating) && current.right
      depth += 1
      current = current.right
      push(node, current, depth)
    elsif (node.rating > current.rating) && current.right.nil?
      current.right = node
    end
    depth
  end

  def include?(rating, node = @root, presence = [])
    node.rating == rating ? presence << true : presence << false
    if node.left
      node = node.left
      include?(rating, node, presence)
    elsif node.right
      node = node.right
      include?(rating, node, presence)
    end
    presence.include?(true)
  end

  def depth_of(rating)
    count = 0
    node = @root
    until node.rating == rating
      if rating < node.rating
        count += 1
        node = node.left
      else
        count += 1
        node = node.right
      end
    end
    count
  end
  
end
