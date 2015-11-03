class Batteries < BoxOfBolts
  attr_reader :name, :weight

  def initialize
    @name   = "Box of bolts"
    @weight = 25
  end

  def feed(robot)
    robot.recharge
  end
end