class Project
  attr_accessor :name, :description, :team_member

  def initialize (name, description)
    @name = name
    @description = description
    @team_member = []
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def add_to_team(name)
    @team_member.push(name)
    self
  end
end

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def this_person
    "#{@name}"
  end
end

# todo add method called add_to_team
# todo it should add a new team_member

# zyx write RSpec test for the new method