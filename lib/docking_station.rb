require_relative 'bike'

class DockingStation

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  attr_accessor :bikes, :capacity

  def release_bike
    fail 'no bikes available' if empty?
    fail 'no working bikes available' if broken?
    bikes.pop
  end

  def dock(bike)
    fail 'station full' if full?
    sort(bike)
  end

  private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= capacity
  end

  def broken?
    bikes[-1].working? == false
  end

  def sort(bike)
    bike.working? ? bikes << bike : bikes.unshift(bike)
  end

end
