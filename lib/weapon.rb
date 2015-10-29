class Weapon < Item
  attr_reader :name, :weight, :damage, :range

  def initialize(name, weight, damage)
    super(name, weight)
    @damage = damage
    @range = 1
  end

  def hit(enemy)
    enemy.wound(@damage)
  end

end