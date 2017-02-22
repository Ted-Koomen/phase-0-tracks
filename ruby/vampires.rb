puts "How many employees will be surveyed"
number_employees=gets.to_i

number_employees.times do
	
	puts "What is your name?"
	name = gets.chomp



	puts "How old are you?"	
	age = gets.to_i

	puts "Would you like garlic bread? (y/n)"
	garlic = gets.chomp

	puts "Would you like company health insurance? (y/n)"
	insurance = gets.chomp

	puts "Do you have any allergies? (done if none)"
	loop do  	
		allergies = gets.chomp
		if allergies == "sunshine"
			puts "Probably a vampire."
			exit
		end
		break if allergies == "done"	
	end

	has_vampire_name = name == "Drake Cula" || 
				   name == "Tu Fang"
				   

	has_old_age = age > 80

	wants_bread = garlic == "y"

	wants_insurance = insurance == "y"
			


	if  has_vampire_name
		puts "Definitely a vampire"

	elsif
		(!has_old_age && wants_bread) || wants_insurance 
		puts "Probably not a vampire."

	elsif (has_old_age && !wants_bread) || !wants_insurance
		puts "Probably a vampire."

	elsif has_old_age && !wants_bread && !wants_insurance
		puts "Almost certainly a vampire"

	else
		puts "Results inconclusive"
	end

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end

