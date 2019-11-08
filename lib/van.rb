require_relative 'docking_station'
require_relative 'bike'

class Van

  def initialize(capacity = 20)
    @broken_bikes = []
    @working_bikes = []
    @capacity = capacity
  end

  attr_reader :broken_bikes, :working_bikes, :capacity

  def take_broken_bikes_from(docking_station)
    docking_station.bikes.each { |bike| bike.working? ? break : (broken_bikes << bike; docking_station.bikes.delete(bike)) }
  end

  def deliver_broken_bikes_to(garage)
    broken_bikes.each { |bike| garage.bikes << bike; broken_bikes.delete(bike) }
  end

  def take_working_bikes_from(garage)
    garage.bikes.each { |bike| working_bikes << bike; garage.bikes.delete(bike) }
  end
end
