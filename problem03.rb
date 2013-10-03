def factors_of(num)
  i = 2
  limit = Math.sqrt(num)
  @factors = []
  while i <= limit do
    if num % i == 0
      @factors << i
    end
    i += 1
  end
end

def is_prime(num)
  return false if num == 0 || num == 1
  i = 2
  limit = Math.sqrt(num)
  while i <= limit do
    if num % i == 0
      return false
      break
    end
    i += 1
  end
  return true
end

def prime_numbers(numArray)
  @prime_factors = []
  numArray.each do |x|
    @prime_factors << x if is_prime(x)
  end
end

def largest_number(numArray)
  @large_number = numArray.sort.last
end

def prime_factors(num)
  factors_of(num)
  prime_numbers(@factors)
  largest_number(@prime_factors)
end

print "Enter a number: "
num = gets.to_i
prime_factors(num)
puts "#{@large_number} is the largest prime factor of #{num}"