module MyEnumerable
  def my_each
    for val in 0...self.length
      # puts "this is the puts in my_each #{val}"
      yield self[val]
    end
  end
  def sum
    total = 0
    self.my_each {|i| total += i}
    total
  end
end

class Array
  include MyEnumerable
end

# [3,1,7,8,9].my_each { |i| puts i } #prints 1 2 3 4 in the terminal

puts [3,1,7,8,9].sum


# [1,2,3,4,5].each { |i| puts i } #prints 1 2 3 4 in the terminal
# puts 'Next my each'
# [1,2,3,4,5].my_each { |i| puts i } #prints 1 2 3 4 in the terminal

names = %w(dan bob joe)


# puts names.my_each


# combo = [[1], [2], ['hi'], ['time']]
#
#
# # print combo
# puts ''
# print combo.flatten