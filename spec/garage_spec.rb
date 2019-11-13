require 'garage'

describe Garage do

  it_behaves_like BikeContainer

  let(:bike) { double :bike, broken?: false }

  it 'fixes bikes' do
    allow(bike).to receive(:report_broken).and_return(@broken = true)
    allow(bike).to receive(:broken=).and_return(@broken)
    bike.report_broken
    subject.store(bike)
    subject.fix
    expect(bike).to_not be_broken
  end

  it 'stores bikes' do
    expect(subject.store(bike)).to eq [bike]
  end

end
