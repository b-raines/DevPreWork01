def products_of(numArray)
  @products = []
  numArray.each do |num|
    i = numArray.index(num)
    while i < numArray.length
      product = num * numArray[i]
      @products << product
      i += 1
    end
  end
end

def palindrome(num)
  num = num.to_s
  reverse = num.to_s.reverse
  return true if num == reverse
end

def palindromes_of(numArray)
  @palindromes = numArray.find_all { |num| palindrome(num) }
end

def largest_of(numArray)
  @largest = numArray.sort.last
end

@numbers = *(100..999)

products_of(@numbers)
palindromes_of(@products)
largest_of(@palindromes)
puts @largest