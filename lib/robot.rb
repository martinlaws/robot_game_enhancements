class Robot
  attr_reader   :position, :items, :items_weight, :health, :range
  attr_accessor :equipped_weapon
  MAX_WEIGHT = 250
  MAX_HP     = 100

  def initialize
    @position         = [0,0]
    @items            = []
    @items_weight     = 0
    @health           = MAX_HP
    @equipped_weapon  = Weapon.new('fists', 0, 5)
    @range            = @equipped_weapon.range
  end

  def move_left
    @position[0] -= 1
  end

  def move_right
    @position[0] +=1
  end

  def move_up
    @position[1] += 1
  end

  def move_down
    @position[1] -= 1
  end

  def pick_up(item)
    if (@items_weight + item.weight) <= MAX_WEIGHT
      @items_weight += item.weight
      @items.push(item)
        if item.is_a? Weapon then @equipped_weapon = item end
        if ((item.is_a? BoxOfBolts) && self.health <= 80) then item.feed(self) end
      true
    else
      false
    end
  end

  def wound(hitpoints)
    if (@health - hitpoints) <= 0
      @health = 0
      return false
    else
      @health -= hitpoints
    end
  end

  def heal(hitpoints)
    if (@health + hitpoints) >= MAX_HP
      @health = MAX_HP
      false
    else
      @health += hitpoints
      true
    end
  end

  def heal!(hitpoints)
    begin
      if @health == 0
        raise "Robot is dead!" 
      else
        if (@health + hitpoints) >= MAX_HP
          @health = MAX_HP
        else
          @health += hitpoints
          true
        end
      end
    end
  end

  def attack(enemy)
    begin
      if (enemy.is_a? Robot)
        if ((enemy.position[0] - @position[0]).abs <= @range) && ((enemy.position[1] - @position[1]).abs <= @range)
          @equipped_weapon.hit(enemy)
        else
          return false
        end
      else
        raise "Attack error! Enemy is not a robot!"
      end
    end
  end

  def attack!(enemy)
    begin
      if enemy.is_a? Robot
        @equipped_weapon.hit(enemy)
      else
        raise "Enemy is not a robot!"
      end
    end
  end
end
