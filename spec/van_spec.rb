require 'van'
require 'support/shared_examples_for_bike_container'

describe Van do

  it_behaves_like BikeContainer

  let(:bike) { double :bike }

  it 'loads bikes' do
    expect(subject.load(bike)).to eq [bike]
  end

  it 'unloads bikes' do
    subject.load(bike)
    expect(subject.unload).to eq bike
  end

end
