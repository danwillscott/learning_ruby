require_relative 'human'

class Wizard < Human
  def initialize(name)
    super(Human)
    @name = name
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
  end

  def fire_ball(other)
    (other.class.ancestors).each {|i| other.loose_health(@strength) if i == Human}
    self
    self
  end
end
