class WordGuess
	attr_accessor :word, :guesses, :guess, :good_guess, :bad_guess, :split_word

	def initialize
		puts "Initializing game..."
		@guess_count = 0
	end

	def game_start
		puts "User 1, enter secret word"
		@word = gets.chomp
		50.times{puts "*****"}
		@split_word = @word.split("")
		@guesses = word.length + 3
		word_length = word.length
		puts "User 2, the word is #{word_length} letters long. you have #{guesses} guesses, good luck!"
	end

	def guessing
	@all_guesses = []
	@good_guess = []
	@bad_guess = []
	@guess_count = 0
	progress = "_" * @word.length
		until @guess_count == @guesses
			@guess_count += 1
			puts "User 2, what is your guess?"
			@guess = gets.chomp
			to_loop = false
			if @all_guesses.include?(@guess)
				to_loop = true
				while to_loop
					puts "Already guessed, try again!"
					@guess = gets.chomp
					if @all_guesses.include?(@guess) == false
						to_loop = false
					end
				end
			end

			if @split_word.include?(@guess)
				puts "Correct!"
				@position = @split_word.index(@guess)
				progress[@position] = @guess
				p progress
				@good_guess << @guess
			elsif 
				puts "Wrong! This is your #{@guess_count +1} guess!"
					@bad_guess << @guess
					@guess_count +=1
			end
			
			if @guess_count == @guesses
				puts "You lose!"
			end

			if @good_guess.sort == @split_word.sort
				puts "Congratulations! You win!"
				break
			end
			@all_guesses << @guess
		end
	end
end
game = WordGuess.new
game.game_start

game.guessing




				
