# Fleet
class Fleet
  ALPHABET = ("A".."Z").inject(:+)
  attr_reader :positions
  def initialize(options = {})
    options = defaults.merge(options)
    @positions = options[:positions]
    @max_letter_index = alphabet_index(options[:coord][0])
    @max_number = options[:coord][1].to_i
  end


  def receive(input = {})
    input = receive_defaults.merge(input)
    @ship_size, @direction  = input[:ship].size, input[:direction]
    @letter, @number = input[:coord][0], input[:coord][1].to_i

    load_positions_for_large_ships if @ship_size > 1
    positions << input[:coord]
  end

private

  def alphabet_index(letter)
    ALPHABET.index(letter)
  end

  def letter_index
    alphabet_index(@letter)
  end

  def end_of_ship_x
    letter_index - (@ship_size - 1)
  end

  def end_of_ship_y
    letter_index - (@ship_size - 1)
  end

  def display_error_if_ship_will_be_off_board_hz
    fail 'Off grid' if end_of_ship_x > @max_letter_index
  end

  def display_error_if_ship_will_be_off_board_v
    fail 'Off grid' if end_of_ship_y > @max_number
  end

  def load_positions_with_horizontal_ships
    (1...@ship_size).each { |num| @positions << "#{ALPHABET[letter_index+num]}#{@number}" }
  end

  def load_positions_with_vertical_ships
    (1...@ship_size).each { |num| positions << "#{@letter}#{@number + num}" }
  end

  def load_positions_for_large_ships
    if @direction == :across
      display_error_if_ship_will_be_off_board_hz
      load_positions_with_horizontal_ships
    else
      display_error_if_ship_will_be_off_board_v
      load_positions_with_vertical_ships
    end
  end

  def defaults
    { positions: [], coord: 'I9' }
  end

  def receive_defaults
    { ship: Ship.patrol_boat, coords: 'A1', direction: :down }
  end

end
