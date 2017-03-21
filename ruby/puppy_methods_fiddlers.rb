=begin
class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times{puts "woof!"}
  end 

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_age)
  	human_age * 7
  end

  def shake_paw(name)
  	puts "***Shook paw with #{name}***"
  end
end

puppy = Puppy.new
puppy2 = Puppy.new
puppy.fetch("ball")
puppy.speak(5)
puppy.roll_over
p puppy.dog_years(7)
puppy.shake_paw("Teddy")
=end

cats = []
class Cats

	def initialize 
		puts "Creating new cat instance!"
	end

	def cough_furrball
		puts "***Coughs furr ball***"
	end

	def takes_nap(length)
		puts "Took a #{length} hour nap!"
	end
end

counter = 0
while counter < 50
	cats.push("Cat #{counter}")
	cats[counter] = Cats.new
	counter += 1
end

cats.each do |x|
	x.cough_furrball
	x.takes_nap(4)
end