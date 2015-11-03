require_relative 'spec_helper'

describe Robot do
 
  before :each do
    @robot = Robot.new
  end

  it "should add itself to the robot list upon initializing" do 
    @r1 = Robot.new
    expect(Robot.show_list).to include(@r1)
    puts Robot.show_list
  end
end