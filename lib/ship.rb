# defining class
class Ship
  attr_accessor :size, :hits
  attr_reader :coords

  def initialize
    @size = 0
    @coords = []
    @hits = []
  end

  def location_coords!(input)
    fail 'Requires an array' unless input.is_a?(Array) && (input.length == size)
    @coords = input
  end

  def sunk?
    hits.all? { |x| x == true }
  end

  def hit
    fail 'Ship Already Sunk' if hits.size == size
    @hits << true
  end
end
