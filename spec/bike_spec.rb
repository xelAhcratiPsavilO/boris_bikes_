require 'bike'

describe Bike do

  it { is_expected.to respond_to :broken? }

  it 'is working by default' do
    expect(subject).to_not be_broken
  end

  it 'reports broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

  it 'fixes the bike' do
    subject.report_broken
    subject.fix
    expect(subject).to_not be_broken
  end

end
