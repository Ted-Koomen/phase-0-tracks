#write method that swaps first and last name
#changes vowels to next vowel in alphabet
#changes consonant to next consonant in alphabet
def name_scramble(str)
	arr = str.downcase.split("")
	vowels = ["a", "e", "i", "o", "u"]
	consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	str_new = arr.map do |char|
		if vowels.include?(char) 
			vowels.rotate[vowels.index(char)];
		elsif consonant.include?(char)
			consonant.rotate[consonant.index(char)]
		end
	end
	str_new.join.capitalize
end

names = []
loop do 
	puts "What is the name to scramble (enter quit if you want to exit)"
	name = gets.chomp.split(" ")
	break if name.first == "quit"
	name_info = {
		first_name: name.first,
		last_name: name.last, 
		last_scrambled: name_scramble(name.first),
		first_scrambled: name_scramble(name.last)
	}
	names << name_info
	puts "#{name_info[:first_scrambled]} #{name_info[:last_scrambled]}"
	
end


names.each do |name_info| 
	puts "#{name_info[:first_scrambled]} #{name_info[:last_scrambled]} is actually #{name_info[:first_name]} #{name_info[:last_name]}"
end

