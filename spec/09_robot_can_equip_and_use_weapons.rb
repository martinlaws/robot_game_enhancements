require_relative 'spec_helper'

describe Robot do
  before :each do
    @robot = Robot.new
  end

  describe "#equipped_weapon" do
    it "should have no equipped_weapon" do
      expect(@robot.equipped_weapon).to be_nil
    end

    it "sets equipped weapon" do
      weapon = Laser.new

      @robot.equipped_weapon = weapon
      expect(@robot.equipped_weapon).to eq(weapon)
    end
  end

  describe "#attack" do
    before :each do
      @robot2 = Robot.new
      @weapon = PlasmaCannon.new
    end

    it "uses the equipped weapon in attack" do
      @robot.equipped_weapon = @weapon

      expect(@weapon).to receive(:hit).with(@robot2)
      @robot.attack(@robot2)
    end
  end
end
