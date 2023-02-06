require 'node.rb'
require 'linked_list.rb'

class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end
end