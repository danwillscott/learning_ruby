class Mammal
  def initialize(health=150)
    @health = health
  end
  def display_health
    puts 'health is ' + @health.to_s
    self
  end
end

animal = Mammal.new
animal.display_health

class Dog < Mammal
  def pet
    @health += 5
    self
  end

  def walk
    @health -= 1
    self
  end

  def run
    @health -= 10
    self
  end
end


dog = Dog.new

dog.walk.walk.walk.run.run.pet.display_health
