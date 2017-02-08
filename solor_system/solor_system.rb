#zyx SolarSystem class

class SolarSystem
  @@all_planets = 0
  @@planet_list = []
  attr_accessor :name


  def initialize(name = 'Andromeda')
    @name = name

  end
  def all
    @@all_planets
  end
  def planet_list
    @@planet_list
  end
  def super_nova # todo
    @@planet_list = []
    @@all_planets = 0
  end
end

# zyx Planet class

class Planet < SolarSystem
  attr_accessor :name, :description, :population

  #name, description and population
  def initialize(name)
    @name = name
    @@all_planets += 1
    @@planet_list.push(self)
  end
end

