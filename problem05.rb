def find_lcm(a, b)
  numArray = *(a..b)
  @lcm = numArray.inject(:lcm)
end

puts "Enter the bottom of your range: "
a = gets.to_i
puts "Enter the top of your range: "
b = gets.to_i

find_lcm(a, b)

puts "The lcm is #{@lcm}"