require_relative 'spec_helper'

describe Robot do
 
  before :each do
    @robot = Robot.new
    @batteries = Batteries.new
  end

  it "starts with 50 shield points" do 
    expect(@robot.shield).to eq(50)
  end

  describe "#recharge" do

    it "damages the shield" do
      @robot.wound(20)
      expect(@robot.shield).to eq(30)
    end

    it "recharges the shield by using batteries" do
      @robot.wound(20)
      @batteries.feed(@robot)
      expect(@robot.shield).to eq(50)
    end
  end
end