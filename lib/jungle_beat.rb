require 'node.rb'
require 'linked_list.rb'

class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
    @accepted_sounds = ["tee", "dee", "deep", "bop", "boop", "la", "na", "ding",
     "dah", "oom"]
  end

  def append(words)
    words_string = words
    words_arr = words_string.split(" ")
    words_arr.each do |word|
      if accepted_sounds.find(word)
        list.append(word)
      else
      end
    end

    return self.list.node_string.chomp(" ")
  end

  def count
    self.list.nodes
  end

  def play
    beats = self.list.node_string.chomp(" ")
    `say -r 500 -v Tessa #{beats}`
  end
  
end