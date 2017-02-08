class Human
  attr_accessor :health, :strength, :intelligence, :stealth, :name

  def initialize(name)
    @name = name
    @strength, @intelligence, @stealth = 4
    @health = 100
  end

  def attack(other)
    (other.class.ancestors).each {|i| other.loose_health(@strength) if i == Human}
    self
  end

  def loose_health(amount)
    if @health - amount < 0
      @health = 0
      puts @name + ' loses remaining health and has died'
    else
      @health -= amount
      puts @name + " loses #{amount} health with #{@health} remaining"
    end


    self
  end

end


dan = Human.new('Dan')

bob = Human.new('Bob')

dan.attack(bob)

bob.health


class Wizard < Human
  @health = 50
  @intelligence = 25

  def heal
    @health += 10
  end

  def fire_ball(other)
    (other.class.ancestors).each {|i| other.loose_health(@strength) if i == Human}
    self
  end
end

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

class Samurai < Human
  @@total_samurai = 0
  @health = 200
  def initialize(name)
    super(Human)
    @name = name
    @@total_samurai += 1
  end

  def death_blow(other)
    (other.class.ancestors).each {|i| other.loose_health(@strength) if i == Human}
    @health = 200
  end

  def how_many
    puts "There are a total of #{@@total_samurai.to_s} Samurai"
  end
end


samy = Samurai.new('Samy')
fred = Samurai.new('Samy')
tom = Samurai.new('Samy')
puts samy.strength
puts samy.how_many