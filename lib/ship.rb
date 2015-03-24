# defining class
class Ship
  attr_accessor :size, :hits
  attr_reader :coords

  def initialize
    @size = 0
    @coords = []
    @hits = [true]
  end

  def location_coords!(input)
    fail 'Requires an array' unless input.is_a?(Array) && (input.length == size)
    @coords = input
  end

  def sunk?
    true
  end

  def hit
  end
end
