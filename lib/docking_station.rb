require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    fail 'no bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    @bikes << bike
  end
end
