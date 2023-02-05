require 'node.rb'

class LinkedList
  
  attr_accessor :head, :node_string, :nodes, :current_node, :node, :previous_node

  def initialize
    @head = nil
    @nodes = 0
    @node_string = ""
    @previous_node = previous_node
    @current_node = current_node
    
  end

  def append(data)
    if current_node != nil
      previous_node = current_node
    end
    node = Node.new(data)
    @current_node = node
    @nodes += 1
    node_string << "#{data} "
    
    if @head == nil
      @head = node
    end

    if head.next_node == nil 
      head.next_node = node
    end
    
    return data

  end

  def count
    @nodes
  end

  def to_string
    node_string.chomp!(" ")
    node_string
  
  end

  def prepend(data)
    node = Node.new(data)
    previous_node = head
    @nodes += 1
    node_string[0,0] = "#{data} "
    @head = node

    if @nodes == 0
      head.next_node = nil
    else
      head.next_node = previous_node
    end

    return data

  end

end
