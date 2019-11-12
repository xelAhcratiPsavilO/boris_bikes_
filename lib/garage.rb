class Garage

  attr_reader :bikes, :capacity

    def initialize(capacity = 20)
      @bikes = []
      @capacity = capacity
    end

    def fix
      bikes.each { |bike| bike.working = true }
    end

    def store(bike)
      bikes << bike
    end
end
