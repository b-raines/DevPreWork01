def squares_of(numArray)
  numArray.map { |num| num**2 }
end

def sum_of(numArray)
  numArray.inject(:+)
end

def sum_of_squares(numArray)
  @squares = squares_of(numArray)
  sum_of(@squares)
end

def square_of_sums(numArray)
  sum_of(numArray)**2
end

@numbers = *(1..100)

@diff = square_of_sums(@numbers) - sum_of_squares(@numbers) 

puts @diff