require_relative 'human'

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

