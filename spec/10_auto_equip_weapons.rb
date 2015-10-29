require_relative 'spec_helper'

describe Robot do
  before :each do
    @robot = Robot.new
    @weapon = PlasmaCannon.new
    @non_weapon = BoxOfBolts.new
  end

  # Recall that since it is using a "#" in the description,
  # we are describing/expecting a pick_up instance method
  describe "#pick_up" do
    it "should automatically equip item if it's a weapon of any kind" do
      @robot.pick_up(@weapon)
      expect(@robot.equipped_weapon).to equal(@weapon)
    end

    it "should not equip the item as a weapon if it's not a weapon (duh!)" do
      @robot.pick_up(@non_weapon)
      expect(@robot.equipped_weapon).to be_nil
    end
  end
end
