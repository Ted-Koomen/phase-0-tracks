class Santa
	attr_accessor :reindeer_ranking,:gender
	attr_reader :age, :ethnicity
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@reindeer_ranking = ["rudolph", "dasher", "dancer", "prancer", "vixen", "comet", "cupid", "donner", "blitzen"]
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
	end


	def speak
		puts "Ho, ho, ho! Haaaapppy holidays!"
		@gender

	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def get_mad_at(name)
		if @reindeer_ranking.include?(name) == true
			@reindeer_ranking.delete(name)
			@reindeer_ranking << name
			p @reindeer_ranking
		else
			puts "Not a reindeer!"
		end
	end

	def celebrate_birthday
		@age += 1
	end

	
end

new_santa = Santa.new("male","white")
new_santa.get_mad_at("Rudolph")
#p new_santa.gender = "female"




def santa_generator
	counter = 0
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say"]
	while counter < 50
		puts "-----"
		p example_genders.sample
		p example_ethnicities.sample
		p age = rand(0...140)
		puts "-----"
		counter += 1
	end
	
end		

p santa_generator


