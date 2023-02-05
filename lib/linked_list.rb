require 'node.rb'

class LinkedList
  
  attr_accessor :head, :nodes, :node_string

  def initialize
    @head = nil
    @nodes = 0
    @node_string = ""
  
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
    @nodes
  end

  def to_string
    node_string.chomp(" ")
  end
  
  def prepend(data)
    @nodes += 1
    node_string[0,0] = "#{data} "

    if @head == nil
      @head = Node.new(data)
    else
      after_node = @head
      @head = Node.new(data)
      self.head.next_node = after_node
    end

    return data

  end

  



end
