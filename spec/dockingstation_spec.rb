require 'dockingstation'

describe DockingStation do
  subject(:station) { described_class.new }
  let(:bike) { Bike.new }

  describe 'initialization' do

    it 'has a variable capacity' do
      station = DockingStation.new(50)
      50.times { station.dock(bike) }
      expect{ station.dock(bike) }.to raise_error 'cannot dock bike: station full'
    end

    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times { station.dock(bike) }
      expect{ station.dock(bike) }.to raise_error 'cannot dock bike: station full'
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      station.dock(bike)
      expect(station.release_bike).to eq bike
    end
    it 'releases working bikes' do
      station.dock(bike)
      station.release_bike
      expect(bike).to be_working
    end
    it 'cannot release bikes when none are available' do
      expect{ station.release_bike }.to raise_error 'cannot release bikes: none available'
    end
  end

  describe '#dock' do

    it 'returns docked bikes' do
      station.dock(bike)
      expect(station.dock(bike)).to include bike
    end
    it 'cannot dock more bikes when full' do
      station.capacity.times { station.dock(bike) }
      expect{ station.dock(bike) }.to raise_error 'cannot dock bike: station full'
    end
  end

  describe 'Defaults' do

    it 'allows user to set capacity' do
      expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

end
