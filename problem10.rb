def primes_up_to(limit)
  @primes = [2]
  x = 3
  while x < limit
    @primes << x if is_prime(x) && x < limit
    x += 2
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

primes_up_to(2_000_000)
puts @primes.inject(:+)