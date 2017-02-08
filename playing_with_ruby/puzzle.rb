people_name = %w(John KB Oliver Cory Matthew Christopher)
x = [3,5,1,2,7,9,8,13,25,32]
letters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
vowels = %w(a e i o u)
# def cool_func(x)
#   puts x.inject (:+)
#   x.find_all {|i| i > 10}
# end
# puts cool_func(x)

def longer(x)
  new_arr = []
  # x.each {|i| puts i}
  x.each {|i| new_arr.push(i) if i.length > 10}
  new_arr
end

# puts longer(people_name)

def stupid(arr, vowels)
  message = 'that\'s a vowel fool!'
  first_arr = arr.shuffle.first
  last_arr = arr.shuffle.last
  vowels.each {|i| puts message if i == first_arr}
  puts first_arr
  puts last_arr

end

# stupid(letters, vowels)
random_list = []
(1..10).each {random_list.push((55..100).to_a.sample)}
# puts random_list = random_list.sort
# puts random_list.first
list_strings = []
('a'..'z').to_a.shuffle[0,5].join
mystring = ('a'..'z').to_a.shuffle[0,5].join
# print ('a'..'z').to_a.join
(1..10).each {list_strings.push(('a'..'z').to_a.shuffle[0,5].join)}
# puts list_strings
