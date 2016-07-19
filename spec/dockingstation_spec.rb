require 'dockingstation'

describe DockingStation do
  subject(:dockingstation) { described_class.new }

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    it 'releases working bikes' do
      bike = dockingstation.release_bike
      expect(bike).to be_working
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) }
    it 'sees that a bike has been docked' do
      bike = Bike.new
      expect(dockingstation.dock(bike)).to eq bike
    end
    it 'returns docked bikes' do
      bike = Bike.new
      dockingstation.dock(bike)
      expect(dockingstation.bike).to eq bike
    end
  end

end
