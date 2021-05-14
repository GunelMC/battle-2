class Player

  DEFAULT_HIT_POINTS = 120

  attr_accessor :name, :points

  def initialize(name, points = DEFAULT_HIT_POINTS)
    @name = name
    @points = points
  end
  
  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @points -= 10
  end
  
end