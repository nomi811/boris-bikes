require "bike"

  describe Bike do
    #it "confirms that the bike is working" do
    #  expect(subject).to respond_to :working?
    #end
    it { is_expected.to respond_to :working? }
  end
