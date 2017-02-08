class Mammal
  def initialize(health=150)
    @health = health
  end
  def display_health
    puts 'health is ' + @health.to_s
    self
  end
end


class Lion < Mammal
  def initialize
    @health = 170
  end
  def eat_human
    @health += 20
    self
  end

  def attack_town
    @health -= 50
    self
  end

  def fly
    @health -= 10
    self
  end
  def display_health
    puts 'im a dragon'
    super
  end
end


lion = Lion.new

lion.attack_town.attack_town.attack_town.eat_human.eat_human.fly.fly.display_health