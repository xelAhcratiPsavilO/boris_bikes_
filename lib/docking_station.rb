require_relative 'bike'

class DockingStation

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes, :capacity

  def release_bike
    fail 'no bikes available' if empty?
    fail 'no working bikes available' if broken?
    bikes.pop
  end

  def dock(bike)
    fail 'station full' if full?
    order(bike)
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

  def order(bike)
    if bike.working?
      bikes << bike
    else
      bikes.unshift(bike)
    end
  end

end
