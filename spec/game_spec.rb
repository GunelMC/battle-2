require 'game'

describe Game do

subject(:game) { described_class.new(player_1, player_2) }
let(:player_1) { double :player_1 }
let(:player_2) { double :player_2 }

  describe '#attack' do
  it 'player hp drops' do

    allow(game.player_2).to receive(:points).and_return(120)
    game.attack(player_2)
    expect { game.player_2.points }.to change_by(-10)
    end 
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
  it 'retrieves the second player' do
    expect(game.player_2).to eq player_2
    end
  end
end

