require 'numbers_and_words'

letter_count = 0

(1..1000).each do |num|
  count = num.to_words.gsub(/[-\s]/, '').length
  letter_count += count
  letter_count += 3 if num > 99 && num % 100 != 0
end

puts letter_count