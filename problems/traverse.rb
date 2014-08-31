
class Node
  attr_reader :data, :left_child, :right_child

  def initialize(data, left, right)
    @data = data
    @left_child = left
    @right_child = right
  end
end

class Traverse

  def self.root_only(tree)
    yield tree.data
  end

  def self.with_preorder(node, &block)
    # TODO
    yield node.data
    if node.left_child != nil
      self.with_preorder(node.left_child, &block)
    end
    if node.right_child != nil
      self.with_preorder(node.right_child, &block)
    end
  end

  def self.with_inorder(node, &block)
    # TODO
    if node.left_child != nil
      self.with_inorder(node.left_child, &block)
    end
    yield node.data
    if node.right_child != nil
      self.with_inorder(node.right_child, &block)
    end
  end

  def self.with_postorder(node, &block)
    # TODO
    if node.left_child != nil
      self.with_postorder(node.left_child, &block)
    end
    if node.right_child != nil
      self.with_postorder(node.right_child, &block)
    end
    yield node.data
  end

  def self.with_levelorder(node)
    # TODO: EXTENSION
    # HINT: Use an iterative solution
    current_node = node
    yield node.data
    if node.left_child != nil
      yield node.left_child.data
    end
    if node.right_child != nil
      yield node.right_child.data
    end

  end
end
