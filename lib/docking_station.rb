require_relative 'bike'

class DockingStation

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes, :capacity

  def release_bike
    fail 'no bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'station full' if full?
    bikes << bike
  end

  private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= capacity
  end

end
