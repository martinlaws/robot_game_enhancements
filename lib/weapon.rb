class Weapon < Item
  attr_reader :name, :weight, :damage

  def initialize(name, weight, damage)
    super(name, weight)
    @damage = damage
  end

  def hit(enemy)
    enemy.wound(@damage)
  end

end