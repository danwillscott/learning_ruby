array = [1, 2, 3, 4, 5, 6]
neg_arr = [1, -4, 55, -20,]
# TODO Print 1-255

# (1...256).each { |i| puts i }  # add puts before last i

# TODO Print odd numbers between 1-255

# (1..255).each { |i| if i % 2 == 1; i end } # add puts before i

# puts (1..255).select(&:odd?)
# for i in 1..255
#   if i % 2 == 1
#     puts i
#   end
# end

# TODO Print Sum

# (1..255).inject { |sum, n| sum + n }
# (1..255).reduce(:+)

# TODO Iterating through an array

# array.each { |x| x } # add puts before last x

# TODO Find Max

# array.max

# TODO Get Average

# sum = 0
# (1...10).each { |i| sum += i }
# sum # add puts before sum

# TODO Array with Odd Numbers

# (1...50).each { |i| if i % 2 == 1; i end } # add puts before last i

# TODO Greater Than y

# y = 2
# counter = 0
# array.each { |x| counter += 1 if x > y }
# puts counter

# TODO Square the values

# array.each {|x| puts x ** 2}
# for x in array
#   puts x ** 2
# end

# TODO Eliminate Negative Numbers

# neg_arr.each_index {|i|  neg_arr[i] = 0 if neg_arr[i] < 0}
# puts neg_arr

# TODO Max, Min, and Average
# puts array.max
# x = array.inject (:+); x = x / (array.length); puts x
# puts array.min
# #Shifting the values in the array

# x = array.shift; array.push(x); puts array

# TODO Number to string

# neg_arr.each_index {|i| neg_arr[i] = 'dojo' if neg_arr[i] < 0}