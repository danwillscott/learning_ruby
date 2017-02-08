class AppleTree
  attr_accessor :age, :height, :apples
  def initialize(age, height)
    @age = age
    @height = height
    @apples = 0
    grow_apples
  end
  def years_gone_by
    @age += 1
    @height += 20
    grow_apples
  end

  def pick_apples
    if @apples > 0
      temp = @apples
      @apples = 0
      temp
    else
      @apples
    end
  end

  private
  def grow_apples
    if @age <= 3
      @apples = 0
    elsif @age >= 10
      @apples = 0
    else
      @apples += 50
    end
  end

end