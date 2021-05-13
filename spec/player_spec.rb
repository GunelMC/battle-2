require 'player'

describe Player do
  it 'initializes with the name as an argument'do
    player = Player.new('Dev')
    expect(player.name).to eq('Dev')
  end 
end