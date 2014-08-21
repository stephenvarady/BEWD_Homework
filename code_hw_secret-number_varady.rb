# Defines random secret number

prng = Random.new
number = prng.rand(100)

# Gets user input for guess

def user_guess
	print "Guess a number between 1 and 100: "
	gets.to_i
end

# Evaluates user guess, puts feedback

def check_number(guess, number)

	if guess > number
		puts "Too high! Try a lower number."
	elsif guess < number
		puts "Too low! Try a higher number."
	else
		puts "You guessed my secret number!"
		abort("You win! The game is over.")
	end

end

# Program begins
# Program begins

puts "Hey, wanna play the Secret Number Game?"

# Loops until user runs out of guesses

6.downto(1) do |num|

	puts "You have #{num} guesses left."
	guess = user_guess
	check_number(guess, number)

	if num == 1
		puts "Tough luck, you ran out of guesses."
		abort("You lose! The game is over.")
	end

end