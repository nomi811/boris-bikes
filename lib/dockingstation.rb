require_relative 'bike'

class DockingStation

  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_array = []
    @capacity = capacity
  end

  def release_bike
    fail 'cannot release bikes: none available' if empty?
    bike_array.pop
  end

  def dock(bike)
    fail 'cannot dock bike: station full' if full?
    bike_array << bike
  end

  private

  attr_reader :bike_array

  def full?
    bike_array.count >= capacity
  end

  def empty?
    bike_array.empty?
  end

end
