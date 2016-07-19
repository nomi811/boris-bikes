require 'dockingstation'

describe DockingStation do
  subject(:dockingstation) { described_class.new }

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = dockingstation.release_bike
    expect(bike).to be_working
  end



end
