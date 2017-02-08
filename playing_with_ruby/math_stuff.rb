class MathDojo
  @@total = 0
  def initialize

  end

  def add(*a)
    a.flatten.each {|num| @@total += num}
    self
  end

  def subtract(*a)
    (a.flatten).each {|num| @@total -= num}
    self
  end
  def result
    puts @@total
    self
  end

end

MathDojo.new.add(2).add(2, 5).subtract(3, 2).result


MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result