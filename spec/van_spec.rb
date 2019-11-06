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

  end

end
