# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :( "
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " :) "
# 	end
# end

# p Shout.yell_angrily("Damnit")
# p Shout.yell_happily("YAY")

module Shout
	def yell(words)
		words + "!!!" + ":("
	end
end

class Mom
	include Shout
end

class Dad
	include Shout
end

mom = Mom.new
p mom.yell("Do your homework")

dad = Dad.new
p dad.yell("Listen to your mother!")