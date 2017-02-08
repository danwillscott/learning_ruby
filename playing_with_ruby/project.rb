
# class Project
#   attr_accessor :name, :desc
#
#   def initialize(name, desc)
#     @name = name
#     @desc = desc
#   end
#
#   def elevator_pitch
#     puts @name
#     puts @desc
#   end
#
#   #your code here
# end
# project1 = Project.new('Project 1', 'Description 1')
# puts project1.name #prints out Project 1
# project1.elevator_pitch #prints out 'Project 1, Description 1"


class Project
  attr_accessor :name, :description
  def initialize (name, description)
    @name = name
    @description = description
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
end