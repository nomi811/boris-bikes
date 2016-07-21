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
    
    it 'returns docked bikes' do
      bike = Bike.new
      dockingstation.dock(bike)
      expect(dockingstation.bike_array.last).to eq bike
    end
    it 'cannot dock more bikes when full' do
      bike = Bike.new
      20.times { dockingstation.dock(bike) }
      expect{ dockingstation.dock(bike) }.to raise_error 'cannot dock bike: station full'
    end
  end

end
