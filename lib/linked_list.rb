require 'node.rb'

class LinkedList
  
  attr_accessor :head, :nodes, :node_string, :previous_node, :current_node, :after_node

  def initialize
    @head = nil
    @nodes = 0
    @node_string = ""
    @previous_node = previous_node
    @current_node = current_node
    @after_node = after_node
  end

  def append(data)
    @nodes += 1
    @node_string << "#{data} "

    if @head == nil
      @head = Node.new(data)
    else
      last_node = @head
      while last_node.next_node != nil
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new(data)
    end
    
    return data

  end

  def count
    nodes
  end

  def to_string
    node_string.chomp(" ")
  end
  

  



end
