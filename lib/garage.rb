class Garage

    def initialize(capacity = 20)
      @bikes = []
      @capacity = capacity
    end

    attr_reader :bikes, :capacity

    def fix
      bikes.each { |bike| bike.working = true }
    end

    def store(bike)
      bikes << bike
    end
end
