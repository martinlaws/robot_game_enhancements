require_relative 'spec_helper'
# Introduce the concept of a ranged weapon: Grenades!
# Weapons now generally have a default range of 1 but grenades have a range of 2

describe Grenade do
  before :each do 
    @grenade = Grenade.new
  end

  it "should be a weapon" do
    expect(@grenade).to be_a Weapon
  end

  it "#name" do
    expect(@grenade.name).to eq("Grenade")
  end

  it "#weight" do
    expect(@grenade.weight).to eq(40)
  end

  it "#damage" do
    expect(@grenade.damage).to eq(15)
  end

  it "#range" do
    expect(@grenade.range).to eq(2)
  end
end

describe Laser do
  before :each do 
    @laser = Laser.new
  end

  it "should have range equal to 1" do
    expect(@laser.range).to eq(1)
  end
end
