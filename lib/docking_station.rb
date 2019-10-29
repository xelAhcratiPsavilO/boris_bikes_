require_relative 'bike'

class DockingStation

  CAPACITY = 3

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    fail 'no bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'station full' if @bikes.size == CAPACITY
    @bikes << bike
  end
end
