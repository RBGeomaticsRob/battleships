# Ssshhhhh!
class Board
  DEFAULT_SIZE = 2
  attr_reader :size
  def initialize(size = DEFAULT_SIZE)
    @size = size ** 2
    @grid = Array.new(size) { Array.new(size) { Cell.new } }
  end

  def position_ship(coords)
    @position = coords
  end
end
