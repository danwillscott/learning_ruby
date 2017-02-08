require_relative 'human'

class Ninja < Human
  @stealth = 175

  def steal(other)
    (other.class.ancestors).each {|i| other.loose_health(@strength) if i == Human}
    @health += 10
  end

  def get_away
    @health -=15
  end
end
