require 'board'

describe Board do
  let(:when_board_not_hit) { subject.coords.size }

  it 'has an array of co-ordinates' do
    expect(subject.coords).to be_an Array
  end
  it 'has a full board when given default length' do
    expect(when_board_not_hit).to eq(Board::DEFAULT_LENGTH**2)
  end
  it 'take a hit' do
    subject.take_hit('A1')
    expect(subject.coords).not_to include 'A1'
  end
  it 'a hit will decrease not_hit by 1' do
    expect { subject.take_hit('A1') }.to change { subject.coords.size }.by(-1)
  end
end
