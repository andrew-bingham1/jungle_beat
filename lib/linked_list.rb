require 'node.rb'

class LinkedList
  
  attr_accessor :head, :node_string, :nodes, :current_node

  def initialize
    @current_node = current_node
    @head = nil
    @nodes = 0
    @node_string = ""
  end

  def append(data)
    @current_node = node
    @nodes += 1
    node_string << "#{data} "

    if @head == nil
      @head = node
    end

    while current_node.next_node != nil 
      current_node = current_node.next_node
    end

    node = Node.new(data)
    
    return data

  end

  def count
    @nodes
  end

  def to_string
    node_string.chomp(" ")
    node_string
  
  end


end
