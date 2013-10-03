def multiples_of(limit, *num)
  @multiples ||= []
  num.each do |number|
    i = 1
    multiple = 0
    while multiple < limit do
      multiple = number * i
      @multiples << multiple if multiple < limit
      i += 1
    end
  end
end

def sum_of(numArray)
  @sum = numArray.inject(:+)
end

multiples_of(1000, 3, 5)
print @multiples
sum_of(@multiples)
puts @sum