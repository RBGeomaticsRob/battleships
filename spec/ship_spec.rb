require 'ship'

describe Ship do
  let(:ship_size) { subject.size = 1 }
  let(:sink_a_ship) { subject.size.times { subject.hit } }
  it 'knows its sizes' do
    ship_size
    expect(subject.size).to be_a Integer
  end
  it 'does not receive a string' do
    expect { subject.location_coords!('string') }.to raise_error
    'Requires an array'
  end
  it 'it can set the co-ordinates' do
    ship_size
    subject.location_coords!([[:a, 1]])
    expect(subject.coords).to eq [[:a, 1]]
  end
  it 'does not receive a string' do
    expect { subject.location_coords!('string') }.to raise_error
    'Requires an array'
  end
  it 'it can set the co-ordinates' do
    ship_size
    subject.location_coords!([[:a, 1]])
    expect(subject.coords).to eq [[:a, 1]]
  end
  it 'sinks when all co-ords have been #hit' do
    ship_size
    sink_a_ship
    expect(subject).to be_sunk
  end
  it 'cannot be hit when sunk' do
    ship_size
    sink_a_ship
    expect { subject.hit }.to raise_error 'Ship Already Sunk'
  end
end
