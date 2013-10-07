def n_primes(n)
  @primes = [2]
  x = 3
  until @primes.length == n
    @primes << x if is_prime(x)
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


n_primes(10_001)
puts @primes.last