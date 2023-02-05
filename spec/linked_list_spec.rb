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

  it '#can to_string' do
    list = LinkedList.new

    list.append('doop')
    list.append('bop')
    list.append('deep')

    expect(list.to_string).to eq('doop bop deep')
  end

  it '#can prepend' do
    list = LinkedList.new

    list.append('doop')
    
    expect(list.prepend('bop')).to eq('bop')
    expect(list.head.data).to eq('bop')
  end
  
  it '#can insert' do 
    list = LinkedList.new

    list.append('doop')
    list.append('bop')
    list.append('deep')
    list.insert(1,"second")

    expect(list.to_string).to eq('doop second bop deep')
  end

  it '#can find' do
    list = LinkedList.new

    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    expect(list.find(2, 1)).to eq('shi')
    expect(list.find(1, 3)).to eq('woo shi shu')
  end
end