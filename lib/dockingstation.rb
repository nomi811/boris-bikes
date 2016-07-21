require_relative 'bike'

class DockingStation

  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_array = []
    @capacity = capacity
  end

  def release_bike
    fail 'cannot release bikes: none available' if empty?
    return_bike
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

  def return_bike
    @bike_array.each { |bike| return bike unless bike.broken? }
    fail 'cannot release bike: bike is broken'
  end


end
