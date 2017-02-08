module Printer
  def print_each_element
    (0...self.length).each { |i|
      puts self[i]
    }
  end
end

