
class MegaGreeter
  attr_accessor :names

  def initialize(names = 'World')
    @names = names
  end
  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('join')
      puts "Goodbye #{@names.join(', ')}. come back soon!"
    end
  end
end

class Hello
  attr_accessor :name

  def initialize(name = 'World')
    @name = name
  end
  def say_hi(name)
    puts "hi buddy #{name}"
  end
end


if __FILE__ == $0
  new_hi = Hello.new
  new_hi.say_hi('Dan')
  new_hi.say_hi 'fred'

  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = 'Dan'
  mg.say_hi
  mg.say_bye

  mg.names = %w(dan fred james bob tom dave)

  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye
end


