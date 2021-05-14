require 'player'

describe Player do
  subject(:john) { Player.new('John') }
  subject(:becca) { Player.new('Becca') }

  it 'initializes with the name as an argument'do
    expect(john.name).to eq('John')
  end 

  describe "#hit_points" do 
    it 'gives a player 120HP when initialized'do
      expect(john.points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe "#attack" do 
    it 'damages the player'do
      expect(becca).to receive(:receive_damage)
      john.attack(becca)
    end
  end

  describe "#receive_damage" do 
    it 'reduces player points'do
      expect { becca.receive_damage }.to change { becca.points }.by(-10)
    end
  end 
end