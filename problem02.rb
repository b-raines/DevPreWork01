def fibonacci_num(limit)
  @numbers = [1, 2]
  i = 0
  z = 0
  while z < limit
    x = @numbers[i]
    y = @numbers[i + 1]
    z = x + y
    @numbers << z if z < limit
    i += 1
  end
end

def even_numbers(numArray)
  numArray.delete_if { |x| x.odd? }
  @even_num = numArray.compact
end

def sum_of(numArray)
  @sum = numArray.inject(:+)
end

def sum_of_even_fibonacci_num(limit)
  fibonacci_num(limit)
  even_numbers(@numbers)
  sum_of(@even_num)
end

sum_of_even_fibonacci_num(4_000_000)
puts @sum