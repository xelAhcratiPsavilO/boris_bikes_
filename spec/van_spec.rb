require 'van'

describe Van do

  let(:working_bike) { double :bike1, working?: true }
  let(:broken_bike) { double :bike2, working?: false }
  let(:station) { double :bikes => [].push(broken_bike).push(working_bike) }

  it 'takes broken bikes from a DockingStation' do
        subject.take_broken_bikes_from(station)
        expect(subject.broken_bikes).to eq [broken_bike]
  end

end
