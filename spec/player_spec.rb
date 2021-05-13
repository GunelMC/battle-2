require 'player'

describe Player do
  it 'initializes with the name as an argument'do
    player = Player.new('Dev')
    expect(player.name).to eq('Dev')
  end 

  it 'gives a player 120HP when initialized'do
    player = Player.new('Dev')
    expect(player.points).to eq(120)
  end 
end