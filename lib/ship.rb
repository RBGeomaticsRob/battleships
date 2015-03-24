# defining class
class Ship
  attr_accessor :size, :hits
  attr_reader :coords

  def initialize(options = {})
    options = defaults.merge(options)
    @size = options[:size]
    @coords = options[:coords]
    @hits = options[:hits]
  end

  def location_coords!(input)
    fail 'Requires an array' unless input.is_a?(Array) && (input.length == size)
    @coords = input
  end

  def sunk?
    hits.all? { |coord_hit| coord_hit == true }
  end

  def hit
    fail 'Ship Already Sunk' if hits.size == size
    @hits << true
  end

  private

  def defaults
    { size: 0, coords: [], hits: [] }
  end
end
