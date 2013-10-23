num = 2**1000
num_array = num.to_s.split('')
num_array = num_array.map {|x| x.to_i }
sum = num_array.inject(:+)
puts sum