require_relative 'bike'

class DockingStation

  attr_reader :bike_array

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_array = []
    @capacity = capacity
  end

  def release_bike
    fail 'cannot release bikes: none available' if empty?
    @bike_array.pop
  end

  def dock(bike)
    fail 'cannot dock bike: station full' if full?
    @bike_array << bike
  end

  private
  
  def full?
    bike_array.count >= DEFAULT_CAPACITY
  end

  def empty?
    bike_array.empty?
  end

end
