require 'fleet'

describe Fleet do
  it 'can recieve a patrol boat' do
    subject.receive(ship: Ship.patrol_boat, coord: 'A1', direction: :down)
    expect(subject.positions).to eq ['A1']
  end
  it 'can recieve a battleship horizontally' do
    subject.receive(ship: Ship.battleship, coord: 'A1', direction: :across)
    expect(subject.positions.sort).to eq ['A1','B1','C1']
  end
  it 'can recieve an aircraft carrier' do
    subject.receive(ship: Ship.aircraft_carrier, coord: 'A1', direction: :down)
    expect(subject.positions.sort).to eq ['A1','A2','A3','A4','A5']
  end
end
