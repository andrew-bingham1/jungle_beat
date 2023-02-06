require 'rspec' 
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe JungleBeat do 
  it '#initialize' do
    jb = JungleBeat.new
    
    expect(jb).to be_a(JungleBeat)
    expect(jb.list.head).to eq(nil)
  end

  it '#can append' do
    jb = JungleBeat.new
    
    expect(jb.append("deep dop do")).to eq("deep dop do")
  end

end