require_relative 'spec_helper'
# Since grenades have a range of 2, if the robot has one equipped,
# it can attack an enemy robot that is 2 tiles away instead of just 1 tile away
# That said, it will also discard/unequip the grenade

describe Robot do
  before :each do
    @robot = Robot.new
    @grenade = Grenade.new
  end

  describe '#attack' do
    context "equipped with grenade" do
      before :each do
        @robot.equipped_weapon = @grenade
      end

      context "with enemy robot two blocks above" do
        before :each do
          @robot2 = Robot.new
          @robot2.move_up
          @robot2.move_up
        end

        it "is able to successfully wound the enemy" do
          expect(@robot2).to receive(:wound)
          @robot.attack(@robot2)
        end

        it "should dispense the weapon (can only use once)" do
          @robot.attack(@robot2)
          expect(@robot.equipped_weapon).to be_nil
        end
      end

      context "with enemy robot three blocks above" do
        before(:each) do
          @robot2 = Robot.new
          @robot2.move_up
          @robot2.move_up
          @robot2.move_up
        end

        it "is NOT able to successfully wound the enemy" do
          expect(@robot2).not_to receive(:wound)
          @robot.attack(@robot2)
        end
      end
    end
  end
end
