def prime_numbers_up_to(limit)
  numArray = *(2..limit)
  numArray.delete_if { |x| x.even? unless x == 2 }
  max_limit = limit
  numArray.each do |num|
    min_multiplier = num
    max_multiplier = max_limit/num
    multiples = *(min_multiplier..max_multiplier)
    multiples = multiples.delete_if { |x| x.even? }
    multiples = multiples.compact
    multiples = multiples.map { |i| i * num }
    multiples.each { |x| numArray.delete(x) }
    max_limit = numArray.last
  end
end

def prime_factors_of(num)
  @prime_factors ||= Hash.new(0)
  prime_numbers = prime_numbers_up_to(num)
  prime_numbers.each do |prime_num|
    if num % prime_num == 0
      quotient = num/prime_num
      times_div = 1
      until quotient % prime_num != 0
        quotient = quotient/prime_num
        times_div += 1
      end
      @prime_factors[prime_num] = times_div if times_div > @prime_factors[prime_num]
    end
  end
end

def lcm(min, max)
  numbers = *(min..max)
  numbers.each do |num|
    prime_factors_of(num)
  end
  factored = []
  @prime_factors.each do |factor, times|
    factored << factor ** times
  end
  @lcm = factored.inject(:*)
end

lcm(1, 20)
puts @lcm