class Grenade < Weapon

  def initialize    
    @name   = "Grenade"
    @weight = 40
    @damage = 15
    @range  = 2
  end

  def hit(enemy)
    enemy.wound(@damage)
  end
end