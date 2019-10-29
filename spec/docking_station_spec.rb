require 'docking_station'

describe DockingStation do

  it 'can set a specific capacity when needed' do
    station = DockingStation.new(30)
    expect(station.capacity).to eq 30
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq 20
  end

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it 'raises errors when no bikes available' do
    expect{ subject.release_bike }.to raise_error 'no bikes available'
  end

  it 'docks bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'raises errors when station is full' do
    bike = Bike.new
    subject.capacity.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error 'station full'
  end

  it 'sees stored bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end
end
