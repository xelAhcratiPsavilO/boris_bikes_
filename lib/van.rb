require_relative 'docking_station'
require_relative 'bike'

class Van

  def initialize
    @broken_bikes = []
  end

  attr_reader :broken_bikes

  def take_broken_bikes_from(docking_station)
    docking_station.bikes.each { |bike| bike.working? ? break : (broken_bikes << bike; docking_station.bikes.delete(bike)) }
  end
end
