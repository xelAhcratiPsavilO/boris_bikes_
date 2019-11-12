require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  let(:bike) { double :bike, working?: true }

  it 'can set a specific capacity when needed' do
    station = DockingStation.new(30)
    expect(station.capacity).to eq 30
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq 20
  end

  it 'releases working bikes' do
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it 'raises errors when no working bikes available' do
    allow(bike).to receive(:working?).and_return(false)
    subject.dock(bike)
    expect{ subject.release_bike }.to raise_error 'no working bikes available'
  end

  it 'raises errors when no bikes available' do
    expect{ subject.release_bike }.to raise_error 'no bikes available'
  end

  it 'docks bikes' do
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'raises errors when station is full' do
    subject.capacity.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error 'station full'
  end

  it 'sees docked bikes' do
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end
end
