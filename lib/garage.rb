class Garage

    def initialize(capacity = 20)
      @bikes = []
      @capacity = capacity
    end

    attr_reader :bikes, :capacity

    def store(bike)
      bikes << bike
    end
end
