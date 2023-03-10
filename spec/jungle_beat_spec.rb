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

  it '#can count' do
    jb = JungleBeat.new
    jb.append("deep dop do")

    expect(jb.count).to eq(3)
    jb.append("deep dop do")
    expect(jb.count).to eq(6)
  end


  it '#can play' do
    jb = JungleBeat.new
    
    # jb.append("deep doo ditt woo hoo shu")
    jb.append("ding, dah, oom, oom, ding, oom, oom, oom, ding, dah, oom, oom, ding, dah, oom, oom, ding, dah, oom, oom")
    require 'pry'; binding.pry
  end
end