class Garage

  include BikeContainer

    def fix
      bikes.each { |bike| bike.broken = false }
    end

    def store(bike)
      add_bike bike
    end
end
