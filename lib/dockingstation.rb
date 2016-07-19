require_relative 'bike'

class DockingStation

  attr_reader :bike_array

  DEFAULT_CAPACITY = 20

  def initalize(capacity = DEFAULT_CAPACITY)
    @bike_array = []
    @capacity = capacity
  end

  def release_bike
    fail 'cannot release bikes: none available' if @bike_array.empty?
    @bike_array.pop
  end

  def dock(bike)
    fail 'cannot dock bike: station full' if @bike_array.count >= DEFAULT_CAPACITY
    @bike_array << bike
  end

end
