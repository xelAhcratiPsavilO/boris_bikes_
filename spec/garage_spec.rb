require 'garage'

describe Garage do

    it 'can set a specific capacity when needed' do
      garage = Garage.new(30)
      expect(garage.capacity).to eq 30
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq 20
    end

end
