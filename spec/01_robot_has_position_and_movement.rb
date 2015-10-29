require_relative 'spec_helper'

# The @robot can move around in two dimensional space.
# We can use an array to keep track of its X and Y position, which will
# by default start at 0, 0

describe Robot do

  # Since we are describing a Robot class,
  # all the nested descriptions here are referring to the @robot.

  # "Before each" blocks are run before every test
  # and they're commonly used to do some setup.
  # In this case we're creating a new robot and storing it in the @robot instance variable.
  before :each do
    @robot = Robot.new
  end

  # The pound symbol is a convention to imply that position is a callable method
  # This test is basically saying that it expects @robot.position == [0, 0]
  describe "#position" do
    it "starts off at the center of the board, which is 0,0" do
      expect(@robot.position).to be == [0,0]
    end
  end

  # Now let's describe some of the movement methods on the Robot
  describe "movement in 2D space" do

    # It's important to read the contents of the test to see what it's testing for
    # Btw: an "it" is a test.
    # The string "has ability to #move_left one tile at a time" is just a description of what is being tested.
    it "has ability to #move_left one tile at a time" do
      @robot.move_left
      expect(@robot.position).to eq([-1, 0])

      @robot.move_left
      expect(@robot.position).to eq([-2, 0])
    end

    it "has ability to #move_right one tile at a time" do
      @robot.move_right
      expect(@robot.position).to eq([1, 0])

      @robot.move_right
      expect(@robot.position).to eq([2, 0])
    end

    it "has ability to #move_up one tile at a time" do
      @robot.move_up
      expect(@robot.position).to eq([0, 1])

      @robot.move_up
      expect(@robot.position).to eq([0, 2])
    end

    it "has ability to #move_down one tile at a time" do
      @robot.move_down
      expect(@robot.position).to eq([0, -1])

      @robot.move_down
      expect(@robot.position).to eq([0, -2])
    end
  end
end
