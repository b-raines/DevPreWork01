def collatz_sequence(num)
  i = num
  @length = 1
  until i == 1
    if i.even?
      i /= 2
    else
      i = 3 * i + 1
    end
    @length += 1
  end
end


max_length = 0
max_number = 0
num_array = *(1...1_000_000)
num_array = num_array.reverse
num_array.each do |number|
  collatz_sequence(number)
  if @length > max_length
    max_length = @length
    max_number = number
  end
end

puts max_number
