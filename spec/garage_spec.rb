require 'garage'

describe Garage do

  it_behaves_like BikeContainer

  let(:bike) { double :bike, broken?: true }

  it 'fixes bikes' do
    subject.store(bike)
    expect(bike).to receive :fix
    subject.fix_bikes
  end

  it 'stores bikes' do
    expect(subject.store(bike)).to eq [bike]
  end

end
