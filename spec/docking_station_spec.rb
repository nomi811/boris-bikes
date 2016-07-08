require 'docking_station'

describe DockingStation do
  it 'initializes bikes to an empty array' do
    expect(subject.bikes).to eq []
  end

  describe 'release_bike method' do
	  it 'returns an error if there are no bikes available' do
	    expect{subject.release_bike}.to raise_error "No bikes docked"
	  end
	  it 'releases bike from docking station' do
	    expect(DockingStation.new).to respond_to :release_bike
	  end
  end

  describe 'dock method' do
	  it 'docks a bike into the docking station' do
	    expect(subject).to respond_to(:dock).with(1).argument
	  end
	  it 'returns an error if there are 20 bikes already in the docking station' do
	    20.times {subject.dock(Bike.new)} 
	    expect{subject.dock(Bike.new)}.to raise_error 'Docking station full'
	  end
	  it 'returns a docked bike' do
	    bike = Bike.new
	    subject.dock(bike)
	    expect(subject.bikes.last).to eq bike
  	end
  end
  
end
