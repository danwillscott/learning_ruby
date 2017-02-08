
# .member?(val) => true or false
# .include?(value) => true or false
# .last => returns the last object in range
# .max => returns the maximum value in range
# .min => returns the minimum value in rangeA

num = [1, 4, 9, 1, 4, 123, 2345, 5467, 23]

puts num.member? 2  # false
puts num.member? 1  # true

puts num.include? 5  # false
puts num.include? 123  # true

puts num.last  # 23
puts num.max   # 5467
puts num.min   # 1



