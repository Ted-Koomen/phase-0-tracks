class Word_Guess
	attr_reader :guess_count

	def initialize
		@word = "mouse"
		@guess_count = 0
		@is_over = false
	end

	def user_guess
		@guess_count += 1
	end
end

# user interface
 puts "Welcome to my guessing game!"
 game = Word_Guess.new




#loop for guessing
counter = 0
until counter == 5
	 puts "You have 5 guesses to guess the secret word, what is your guess?"
 	 guess=gets.chomp
 	 if guess == @word
 	 	puts "You win"
 	 	break
 	 elsif 
 	 	puts "Guess again"
 	 else counter == 5
 	 	puts "You lose"
 	 end
	counter +=1
end



