require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  let(:bike) { double :bike, broken?: false }

  it 'releases bikes' do
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'raises errors when no bikes available' do
    expect{ subject.release_bike }.to raise_error 'no bikes available'
  end

  it 'docks bikes' do
    expect(subject.dock(bike)).to eq [bike]
  end

end
