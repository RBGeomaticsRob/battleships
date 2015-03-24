require 'ship'

describe Ship do
  let(:ship_size) { subject.size = 1 }
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
  # it 'sink when all co-ords have been #hit' do
  #   ship_size
  #   subject.size.times { subject.hit }
  #   expect(subject.hits.all? { true }).to be_sunk
  # end
  it 'knows if its been #sunk' do
    ship_size
    subject.size.times { subject.hit }
    expect(subject).to be_sunk
  end
end
