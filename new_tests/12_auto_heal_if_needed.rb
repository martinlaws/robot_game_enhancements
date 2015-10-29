require_relative 'spec_helper'
# The robot should now be smart enough that if it picks up health and needs
# to consume it, then it will automatically feed on the bolts.
# It should only feed on the bolts if it needs all of the energy from them

describe Robot do
  describe "#pick_up" do
    before :each do
      @robot = Robot.new
      @box_of_bolts = BoxOfBolts.new
    end

    it "should automatically feed box of bolts if at or below 80hp" do
      allow(@robot).to receive(:health).and_return(80)
      expect(@box_of_bolts).to receive(:feed).and_call_original
      @robot.pick_up(@box_of_bolts)
    end

    it "should not auto feed box of bolts if above 80hp" do
      allow(@robot).to receive(:health).and_return(81)
      expect(@box_of_bolts).not_to receive(:feed)
      @robot.pick_up(@box_of_bolts)
    end
  end
end
