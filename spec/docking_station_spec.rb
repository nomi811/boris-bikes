require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :bikes }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  # it 'checks bike is working?' do
  #   bike = Bike.new
  #   expect(bike).to be_working
  # end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
	  it 'returns an error when full' do
	    subject.capacity.times { subject.dock Bike.new }
	    expect{ subject.dock(Bike.new) }.to raise_error 'Docking station full'
	  end
	  it 'docks a bike' do
	    bike = Bike.new
	    subject.dock(bike)
	    expect(subject.bikes).to include(bike)
  	end
  end

  describe '#release_bike' do
	  it 'returns an error if there are no bikes available' do
	    expect{ subject.release_bike }.to raise_error "No bikes available"
	  end
    it 'does not release broken bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect{ subject.release_bike }.to raise_error "Bike is broken"
    end
	  it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
	    expect(subject.release_bike).to eq bike
	  end
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) {Bike.new}
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
    end
    it 'has a variable capacity' do
       docking_station = DockingStation.new(50)
       50.times { docking_station.dock Bike.new }
       expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
     end
   end





end
