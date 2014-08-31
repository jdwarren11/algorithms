class Stack

  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(x)
    @store.push(x)
  end

  def peek
    @store.last
  end
end



class Node
  attr_accessor :value, :next_node

  def initialize(value=nil)
    @value = value 
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def push(value)
    if @head == nil
      first_node = Node.new(value)
      @head = first_node
      @tail = first_node
    else
      new_node = Node.new(value)
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def shift
    @head = @head.next_node
  end
end
