require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'is working by default' do
    expect(subject).to be_working
  end

  it 'accepts reports of broken' do
    subject.report_broken
    expect(subject).to_not be_working
  end
end
