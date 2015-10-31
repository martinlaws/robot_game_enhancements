require_relative 'spec_helper'

describe Robot do
 
 before :each do
   @robot = Robot.new
 end

 it "starts with 50 shield points" do 
     expect(@robot.shield).to eq(50)
 end

 describe "#wound" do

   it "does not decrease health when shield is greater than 50" do
     @robot.wound(20)
     expect(@robot.health).to eq(100)
   end

   it "affects health when shield is 0" do
     allow(@robot).to receive(:shield).and_return(0)
     @robot.wound(20)
     expect(@robot.health).to eq(80)
   end
 end
end