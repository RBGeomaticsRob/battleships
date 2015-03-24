require 'ship'

describe Ship do
  let(:ship) { Ship.new(size: 2) }
  it 'has a size' do
    expect(ship.size).to eq 2
  end

  it 'can create a aircraft carrier with a size of 5' do
    aircraft_carrier = Ship.aircraft_carrier
    expect(aircraft_carrier.size).to eq 5
  end

  it 'can create a battleship with a size of 3' do
    battleship = Ship.battleship
    expect(battleship.size).to eq 3
  end

  it 'can create a destroyer with a size of 2' do
    destroyer = Ship.destroyer
    expect(destroyer.size).to eq 2
  end

  it 'can create a patrol boat with a size of 1' do
    patrol_boat = Ship.patrol_boat
    expect(patrol_boat.size).to eq 1
  end
end
