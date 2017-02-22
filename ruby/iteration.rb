array_years = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
sushi = {
    salmon: "sake",
    tuna: "maguro",
    squid: "ika",
    octopus: "tako",
    yellowtale: "hamachi"
}
puts "1) Delete items that meet a condition"
puts "a) Delete if less than 2012:"
puts "original data:"
p array_years
puts ""
puts "after .reject call:"
output = array_years.reject do |year|
    year < 2012
end
p output
puts ""
puts "b) Delete if Japanese word contains the letter i."
puts "original data:"
p sushi
puts ""
puts "after .reject call:"
output = sushi.reject do |english, japanese|
    japanese.include? "i"
end
p output
puts""
puts "******"
puts""
puts "2) Filter items that meet a condition"
puts "a) Filtered for even numbers:"
puts "original data:"
p array_years
puts ""
puts "after .select call:"
output = array_years.select do |year|
    year.even?
end
p output
puts ""
puts "b) Keep if Japanese word containing the letter o."
puts "original data:"
p sushi
puts ""
puts "after .select call:"
output = sushi.select do |english, japanese|
    japanese.include? "o"
end
p output
puts""
puts "******"
puts""
puts "3) Different Filter method"
puts "a) Filtered for odd numbers:"
puts "original data:"
p array_years
puts ""
puts "after .keep_if call:"
output = array_years.keep_if do |year|
    year.odd?
end
p array_years
p output
puts ""
puts "b) Keep if English word containing the letter o."
puts "original data:"
p sushi
puts ""
puts "destructive not possible with hash."
puts""
puts "******"
puts""
array_years = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
puts "4) Remove items until condition is false"
puts "a) Remove years until year is not less than 2014:"
puts "original data:"
p array_years
puts ""
puts "after .take_while call:"
output = array_years.take_while do |year|
    year <= 2014
end
p output
puts ""
puts "b) Remove items until the length of the japanese word is less than 4 characters."
puts "original data:"
p sushi
puts ""
output = sushi.take_while do |english, japanese|
    japanese.length >=4
end
p output
puts""
puts "******"
puts""