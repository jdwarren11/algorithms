class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

end

class Tree
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_node(value)
    if @head == nil
      @head = Node.new(value)
    else
      add_help(value, @head)
    end
  end

  def add_help(value, node)
    if node.value == value
      return node
    elsif value < node.value
      if node.left
        add_help(value, node.left)
      else
        node.left = Node.new(value)
      end
    else
      if node.right
        add_help(value, node.right)
      else
        node.right = Node.new(value)
      end
    end
  end

  def search(value)
    node = @head
    while node
      if value == node.value
        return true
      elsif value < node.value && node.left
        node = node.left
      elsif value > node.value && node.right
        node = node.right
      else
        return false
      end
    end
  end

  def add_array(array)
    return nil if array.empty?
    return add_node(array.first) if array.length == 1
    mid = array.length/2
    add_node(array[mid])
    add_array(array[0...mid])
    add_array(array[(mid + 1)..-1])
  end

  def in_order
    stack = []
    next_node = @head
    sol = []
    
  end

  def balance
    tree_array = in_order
    @head = nil
    add_array(tree_array)
  end

  # ================================
  #           RECURSIVE
  # ================================

  def rec_search(value)
  end

  def rec_search_helper(value, node)
  end

  def rec_in_order
  end

  def rec_in_order_helper(node)
  end
end

