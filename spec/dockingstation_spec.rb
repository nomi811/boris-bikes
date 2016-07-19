require 'dockingstation'

describe DockingStation do
  subject(:dockingstation) { described_class.new }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      dockingstation.dock(bike)
      expect(dockingstation.release_bike).to eq bike
    end
    it 'releases working bikes' do
      bike = Bike.new
      dockingstation.dock(bike)
      dockingstation.release_bike
      expect(bike).to be_working
    end
    it 'cannot release bikes when none are available' do
      expect{ dockingstation.release_bike }.to raise_error 'cannot release bikes: none available'
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike_array) }
    it 'sees that a bike has been docked' do
      bike = Bike.new
      expect(dockingstation.dock(bike)).to eq bike
    end
    it 'returns docked bikes' do
      bike = Bike.new
      dockingstation.dock(bike)
      expect(dockingstation.bike_array).to eq bike
    end
    it 'cannot dock more bikes when full' do
      20.times { dockingstation.dock(Bike.new) }
      expect{ dockingstation.dock(Bike.new) }.to raise_error 'cannot dock bike: station full'
    end
  end

end
