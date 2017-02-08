class Human
  attr_accessor :health, :strength, :intelligence, :stealth, :name

  def initialize(name)
    @name = name
    @strength, @intelligence, @stealth = 4
    @health = 100
  end

  def attack(other)
    (other.class.ancestors).each {|i| other.loose_health(@strength) if i == Human}
  end

  def loose_health(amount)
    if @health - amount < 0
      @health = 0
    else
      @health -= amount
    end


    self
  end
end