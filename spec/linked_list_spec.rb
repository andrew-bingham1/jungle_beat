require 'rspec' 
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do 
  it '#initalize' do
    list = LinkedList.new

    expect(list).to be_a LinkedList
    expect(list.head).to eq(nil)
  end

  it '#can do append method' do
    list = LinkedList.new 
  
    expect(list.append('doop')).to eq('doop')
    require 'pry'; binding.pry
  end
end