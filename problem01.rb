def multiples_of(num1, num2, limit)
  @multiples = *(1...limit)
  @multiples.delete_if { |x| x % num1 != 0 && x % num2 != 0 }
end

def sum_of(numArray)
  @sum = @multiples.inject(:+)
end

multiples_of(3, 5, 1000)
sum_of(@multiples)
puts @sum