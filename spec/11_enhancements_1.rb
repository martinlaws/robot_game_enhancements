require_relative 'spec_helper'

describe Robot do
  before :each do
    @robot = Robot.new
    @laser = Laser.new
  end

  describe "#heal!" do
    it "should throw an error when health hits 0" do
      @robot.wound(105)
      expect { @robot.heal!(5) }.to raise_error
    end

    it "should not attack a non-robot" do
      expect { @robot.attack!(@laser) }.to raise_error
    end
  end
end