require 'board'
describe Board do
  #  let(:player) { double(:player) }
  #  it { expect(subject).to respond_to :state }

  it 'knows its own size' do
    expect(subject).to respond_to :size
  end

  it 'generates a board of default size 2×2' do
    expect(subject.size).to be 4
  end

  it 'knows the position of the ship' do
    ship = double(:ship, coords: [:a, 1])
    expect(subject.position_ship(ship.coords)).to eq ship.coords
  end

#  it 'changes state to not empty when shot' do
#    cell_shot = subject.get_shot(double( :player, player_shoot: [[:a, 1]] ))

    #allow(cell_shot).to receive(:player_shoot).and_return([[:a, 1]])
#    expect(cell_shot).not_to be_cell_empty
#  end
end
