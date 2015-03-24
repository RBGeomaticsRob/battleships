# Ship
class Ship
  attr_reader :size
  def initialize(options = {})
    options = defaults.merge(options)
    @size = options[:size]
  end

  def self.aircraft_carrier
    new(size: 5)
  end

  def self.battleship
    new(size: 3)
  end

  def self.destroyer
    new(size: 2)
  end

  def self.patrol_boat
    new(size: 1)
  end

  private

  def defaults
    { size: 3 }
  end
end
