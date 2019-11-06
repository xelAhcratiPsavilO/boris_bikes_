require 'garage'

describe Garage do

    let(:bike) { double :bike, working?: true }

    it 'can set a specific capacity when needed' do
      garage = Garage.new(30)
      expect(garage.capacity).to eq 30
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq 20
    end

    it 'fixes bikes' do
      allow(bike).to receive(:report_broken).and_return(@working = false)
      allow(bike).to receive(:working=).and_return(@working)
      bike.report_broken
      subject.store(bike)
      subject.fix
      expect(bike).to be_working
    end

    it 'sees stored bikes' do
      subject.store(bike)
      expect(subject.bikes).to eq [bike]
    end

end
