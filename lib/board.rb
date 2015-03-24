# Shhhhh
class Board
  DEFAULT_LENGTH = 2
  ALPHABET = ("A".."Z").inject(:+)
  attr_reader :coords, :side_length
  def initialize(side_length = DEFAULT_LENGTH)
    @coords = []
    @side_length = side_length
    load_coords
  end

  def take_hit(shot_coords)
    @coords.delete(shot_coords)
  end

  private

  def load_coords
    (1..side_length).each do |number|
      (0...side_length).each do |letter|
        @coords << "#{ALPHABET[letter]}#{number}"
      end
    end
  end
end
