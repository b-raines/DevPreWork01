@numbers = *(1..500)
@numbers.each do |a|
  @numbers.each do |b|
    @numbers.each do |c|
      if a**2 + b**2 == c**2 && a + b + c == 1000
        puts a * b * c
        break
      end
    end
  end
end