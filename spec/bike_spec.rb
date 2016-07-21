require 'bike'

describe Bike do
  subject(:bike) { described_class.new }
  it { is_expected.to respond_to :working? }

  describe '#report_broken' do
    it 'can be reported broken' do
      bike.report_broken
      expect(bike).to be_broken
    end
  end

end
