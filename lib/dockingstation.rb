require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'cannot release bikes: none available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'cannot dock bike: station full' if @bike
    @bike = bike
  end

end
