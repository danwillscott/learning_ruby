puts %w(bob Daniel freddy fred williams).any? {|name| name.length > 7}

%w(kitten hamburger bob ears).each {|word| print word, '--'}
puts ''
num_list = [1, 3, 5, 6 ,7, 8 ,1021, 0, 1234]

puts (0..10).collect {|number| number*number}

print  (0..9).collect {'cat '}

puts ''

puts num_list.map {|a| a + a }

puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }
puts 'detect or stop at first block where true'
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }
puts 'find all ** Finds all values like this'
puts (1..10).find_all { |i| i % 3 == 0 }
puts 'reject Ignores all values that match the conditional!!!'
puts (1..10).reject { |i| i % 3 == 0 }
puts 'upto will print all numbers up to the value desired then prints out the starting number'
puts 5.upto(10) { |i| print i, ' ' }