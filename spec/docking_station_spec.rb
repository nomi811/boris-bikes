require 'docking_station'

describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  #it { is_expected.to respond_to :release_bike }
  end
end

describe 'release_bike creates bike' do
  it 'creates a bike' do
    expect(release_bike).to eq Bike.new
  end
end
