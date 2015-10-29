class Robot
  attr_reader   :position, :items, :items_weight, :health
  attr_accessor :equipped_weapon

  def initialize
    @position         = [0,0]
    @items            = []
    @items_weight     = 0
    @health           = 100
    @equipped_weapon  = nil
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
    if (@items_weight + item.weight) <= 250
      @items_weight += item.weight
      @items.push(item)
        if item.is_a? Weapon then @equipped_weapon = item end
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
    if (@health + hitpoints) >= 100
      @health = 100
      false
    else
      @health += hitpoints
      true
    end
  end

  def heal!(hitpoints)
    begin
      if @health = 0
        raise "Robot is dead!" 
      else
        if (@health + hitpoints) >= 100
          @health = 100
        else
          @health += hitpoints
          true
        end
      end
    end
  end

  def attack(enemy)
    if @equipped_weapon
      @equipped_weapon.hit(enemy)
    else
      enemy.wound(5)
    end
  end

  def attack!(enemy)
    begin
      if enemy.is_a? Robot
        if @equipped_weapon
          @equipped_weapon.hit(enemy)
        else
          enemy.wound(5)
        end
      else
        raise "Enemy is not a robot!"
      end
    end
  end
end
