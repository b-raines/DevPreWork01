def digits_to_array(num)
  @digits = num.to_s.split(//)
end

def products_of_digits(numArray)
  @products = []
  i = 0
  while i < numArray.length
    index_1 = numArray[i].to_i
    index_2 = numArray[i + 1].to_i
    index_3 = numArray[i + 2].to_i
    index_4 = numArray[i + 3].to_i
    index_5 = numArray[i + 4].to_i
    product = index_1 * index_2 * index_3 * index_4 * index_5
    @products << product
    i += 1
  end
end

def largest_product(num)
  digits_to_array(num)
  products_of_digits(@digits)
  @largest_number = @products.sort.last
end

puts "Enter a number: "
num = gets.to_i
largest_product(num)
puts "The largest product is #{@largest_number}"