=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!" + " :)"
	end
	Shout.yell_angrily("Teddy")
	Shout.yell_happily("Teddy")

	puts Shout.yell_happily("Teddy")
	puts Shout.yell_happily("Damnit")
end
=end

module Shout
	def yell_angrily(words)
		puts "#{words}" + "!!!" + " :("
	end
	def yell_happily(words)
		puts "#{words}" + "!!!" + " :)"
	end
end

class Angry
	include Shout
end

class Happy
	include Shout
end

angry = Angry.new
angry.yell_angrily("POOP")

happy = Happy.new
happy.yell_happily("WOOOOO")