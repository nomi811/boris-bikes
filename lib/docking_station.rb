require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    return_bike
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  private

  def return_bike
    @bikes.each do |bike|
      return bike unless bike.broken?
    end
    fail 'Bike is broken'
  end
  def full?
	   bikes.count >= capacity
  end

  def empty?
  	bikes.empty?
  end
end
