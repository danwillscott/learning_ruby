# a = {:first_name => "Michael", :last_name => "Choi"}
# b = {:first_name => "John", :last_name => "Supsupin"}
# c = {:first_name => "KB", :last_name => "Tonel"}
# d = {:first_name => "Jessie", :last_name => "De Leon"}
# e = {:first_name => "Jaybee", :last_name => "Balog"}
# names = [a, b, c, d, e]
#
# def name_message(name)
#   puts "You have #{name.length} names in the 'names' array"
#   name.each {|i| puts "The name is '#{i[:first_name]} #{i[:last_name]}'"}
#   puts '...'
# end
#
# name_message(names)
require_relative 'my_enumerable'

numbers = [1, 2, 3 ,4 ,5 ,6 ,7, 8]
puts numbers.sum

# [3,1,7,8,9].my_each { |i| puts i } #prints 1 2 3 4 in the terminal