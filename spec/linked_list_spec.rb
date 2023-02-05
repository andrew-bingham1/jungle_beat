require 'rspec' 
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do 
  it '#initalize' do
    list = LinkedList.new

    expect(list).to be_a LinkedList
    expect(list.head).to eq(nil)
  end

  it '#can append' do
    list = LinkedList.new 
  
    expect(list.append('doop')).to eq('doop')
  end

  it '#can count nodes' do 
    list = LinkedList.new

    list.append('doop')
    list.append('bop')
    list.append('deep')

    expect(list.count).to eq(3)
  end

  it '#can give string' do
    list = LinkedList.new

    list.append('doop')
    list.append('bop')
    list.append('deep')

    expect(list.to_string).to eq('doop bop deep')
  end
end