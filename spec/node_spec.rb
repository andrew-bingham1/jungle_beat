require 'rspec' 
require './lib/node'

RSpec.describe Node do 
  it '#initialize' do
    node = Node.new("plop")

    expect(node).to be_a Node
    expect(node.data).to eq("plop")
  end

  it '#initialize2' do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
  end
end