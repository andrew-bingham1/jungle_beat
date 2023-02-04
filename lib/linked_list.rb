require 'node.rb'

class LinkedList
  
  attr_accessor :head, :node_string, :nodes, :current_node, :node

  def initialize
    @current_node = current_node
    @head = nil
    @nodes = 0
    @node_string = ""
    # @node = node
  end

  def append(data)
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


end
