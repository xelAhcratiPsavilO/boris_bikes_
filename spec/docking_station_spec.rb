require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases bikes' do
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
    DockingStation::CAPACITY.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error 'station full'
  end

  it 'sees stored bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end
end
