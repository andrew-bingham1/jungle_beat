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
    @nodes += 1
    node_string[0,0] = "#{data} "
    @head = node

    if @nodes == 0
      head.next_node = nil
    end

    return data

  end

  def insert(location, value)
    node = list.head
    
    (location += -1).times do
      node.next_node
    end

    previous_node = node.next_node
    list.append(value)
    node.next_node = previous_node

    return node.data
  end

  



end
