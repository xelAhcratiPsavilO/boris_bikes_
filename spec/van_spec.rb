require 'van'

describe Van do

  let(:working_bike) { double :bike1, working?: true }
  let(:broken_bike) { double :bike2, working?: false }
  let(:station) { double :bikes => [].push(broken_bike).push(working_bike) }
  let(:garage) { double :bikes => [] }

  it 'can set a specific capacity when needed' do
    van = Van.new(30)
    expect(van.capacity).to eq 30
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq 20
  end

  it 'takes broken bikes from a DockingStation' do
    subject.take_broken_bikes_from(station)
    expect(subject.broken_bikes).to eq [broken_bike]
  end

  it 'delivers broken bikes to a Garage' do
    subject.take_broken_bikes_from(station)
    subject.deliver_broken_bikes_to(garage)
    expect(subject.broken_bikes).to be_empty
    expect(garage.bikes).to eq [broken_bike]
  end

  it 'sees taken bikes' do
    subject.take_broken_bikes_from(station)
    expect(subject.broken_bikes).to eq [broken_bike]
  end

  it 'takes fixed bikes from a Garage' do
    allow(broken_bike).to receive(:working=).and_return(@working)
    subject.take_broken_bikes_from(station)
    subject.deliver_broken_bikes_to(garage)
    allow(garage).to receive(:fix).and_return(broken_bike.working = true)
    garage.fix
    subject.take_working_bikes_from(garage)
    expect(garage.bikes).to be_empty
    expect(subject.working_bikes).to eq [broken_bike]
  end

  it 'raises an error before taking bikes from a Garage if bikes are still broken' do
    # subject.take_broken_bikes_from(station)
    # subject.deliver_broken_bikes_to(garage)
    # expect(subject.take_working_bikes_from(garage)).to raise_error ''
  end

  it 'delivers working bikes to a DockingStation' do

  end

end
