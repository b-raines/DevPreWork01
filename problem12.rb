def divisors_of(num)
  max = Math.sqrt(num)
  i = 1
  @num_of_divisors = 0
  until i > max
    if num % i == 0
      @num_of_divisors += 2
    end
    i += 1
  end
  @num_of_divisors -= 1 if max.to_s =~ /\d+\.0/
  @num_of_divisors
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