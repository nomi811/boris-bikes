require "bike"

  describe Bike do
    it { is_expected.to respond_to :broken? }
    it { is_expected.to respond_to :report_broken }

    describe '#broken?' do
      it 'returns not broken' do
        bike = Bike.new
        expect(bike).not_to be_broken
      end
      it 'returns broken' do
        bike = Bike.new
        expect(bike).to be_broken
      end
    end
  end
