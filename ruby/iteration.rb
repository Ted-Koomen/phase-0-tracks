
=begin
sample_array = ["a","b","c","d"]
new_letters = []
sample_hash = {
	team: "Borussia Dortumund",
	city: "Dortmund",
	country: "Germany",
	nickname: "Schwartz Gelbe"
}

sample_hash.each do |key, value|
	puts "#{key} is #{value}"
end

sample_array.each do |letter|
	new_letters << letter.next
end

sample_array.map! do |map|
	letter.next
end
=end
sample_array = [1,2,3,4,5,6,7,8,9,10]
dutch_words = {
	girl: "meisje",
	soccer: "voetball",
	car: "auto",
	umbrella: "paraplu",
	beer: "bier"
}

puts "Removing values if greater than 5:"
greater_than_five = sample_array.reject do |number|
	number < 5
end
p greater_than_five

puts "Filtering odd numbers out of array:"
even_numbers = sample_array.select do |number|
	number.even?
end
p even_numbers

puts "Filtering Dutch words with letter a"
output = dutch_words.reject do |english, dutch|
	dutch.include? "a"
end
p output

puts "Taking numbers from array while number is less than 4 or equal to"
less_than_four = sample_array.take_while {|number|number <= 4}
p less_than_four






