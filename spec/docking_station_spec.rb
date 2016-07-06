require 'docking_station'

describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  #it { is_expected.to respond_to :release_bike }
  end

  #it 'release_bike creates a bike' do
    #expect(subject.release_bike).to be_a(Bike)
  #end
  ​
  #it "expects bike to be working" do
    #expect(subject.release_bike).to be_working
  #end
  #it 'releases working bikes' do
    #bike = subject.release_bike
    #expect(bike).to be_working
  #end
end
