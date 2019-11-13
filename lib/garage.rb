class Garage

  include BikeContainer

    def fix_bikes
      bikes.each { |bike| bike.fix }
    end

    def store(bike)
      add_bike bike
    end
end
