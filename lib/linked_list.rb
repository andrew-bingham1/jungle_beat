require 'node.rb'

class LinkedList
  
  attr_accessor :head, :nodes, :node_string, :node

  def initialize
    @head = nil
    @nodes = 0
    @node_string = ""
    @node = node
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


  def insert(loc,data)
    @nodes += 1
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      (loc - 1).times do 
        current_node = current_node.next_node
      end
      new_node = Node.new(data) 
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end

    @node_string = ""
    string_node = @head
    until(string_node == nil)
      node_string << "#{string_node.data} "
      string_node = string_node.next_node
    end

    return data
  end


  def find(node_num,num_to_return)
    find_node = @head
    find_string = ""

    (node_num).times do 
      find_node = find_node.next_node
    end

    (num_to_return).times do
      find_string << "#{find_node.data} "
      find_node = find_node.next_node
    end

    return find_string.chomp(" ")
  end


  def includes?(data)
  include_node = @head
    while(include_node.next_node != nil)
      if include_node.data == data
        return true
      else
        return false
      end
    end
  end

  def pop
    @nodes += -1
    current_node = @head
    pop_string = ""
    until(current_node.next_node.next_node == nil)
      current_node = current_node.next_node
    end
    
    pop_string << "#{current_node.next_node.data} "
    current_node.next_node = nil

    @node_string = ""
    string_node = @head
    until(string_node == nil)
      node_string << "#{string_node.data} "
      string_node = string_node.next_node
    end
    return pop_string.chomp(" ")


  end

end

