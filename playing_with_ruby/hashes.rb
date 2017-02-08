#.delete(key)
#.empty?
#.has_key?(key)
#.has_value?(value)

a = {:first_key => 'Sweet Value!', :second_key => 'OMG VALUES!', :last_key => 'this is a great value'}
b = {}
puts a.empty? # false
puts b.empty? # true

puts a.delete(:first_key)
puts a

puts a.has_key? :first_key # now false because we deleted it
puts a.has_key? :second_key # true

puts a.has_value? 'Sweet Value!' # gone because we deleted the first key value par
puts a.has_value? 'OMG VALUES!' # true

