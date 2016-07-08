require_relative 'bike.rb'

class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes docked" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full' if full?
    @bikes << bike
  end

  def full?
  	@bikes.length >= 20
  end
  def empty?
  	@bikes.empty?
  end
  private :full?
  private :empty?
end
