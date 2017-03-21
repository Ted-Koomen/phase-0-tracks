class Santa
	attr_accessor :gender
	attr_reader :age, :ethnicity
	
	def speak
		puts "Ho, ho ho!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def initialize(gender,ethnicity,age)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		if @reindeer_ranking.include?(reindeer)
			@reindeer_ranking.delete(reindeer)
			@reindeer_ranking << reindeer
		else
			puts "Reindeer not found!"
		end
	end

	def change_gender(new_gender)
		@gender = new_gender
	end
end

#new_santa = Santa.new("male", "white")
#new_santa.speak
#new_santa.eat_milk_and_cookies("snickerdoodle")

def santa_generator
		santas = []
		example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		50.times do |i| 
			puts "-----"
			santas << Santa.new(example_genders.sample, example_ethnicities.sample, age = rand(1...140))
			puts "-----"
		end
		santas
end

p santa_generator