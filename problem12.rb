def divisors_of(num)
  max = num
  divisors = []
  i = 1
  until i >= max
    if num % i == 0
      divisors << i
      divisors << num/i unless num/i == i
    end
    max = num/i
    i += 1
  end
  divisors.length
end

x = 0
triangle_numbers = []
until x > 500 do
  last_num = triangle_numbers.last
  last_num = 0 if last_num.nil?
  triangle_numbers << last_num + triangle_numbers.length + 1
  x = divisors_of(triangle_numbers.last)
end

puts triangle_numbers.last