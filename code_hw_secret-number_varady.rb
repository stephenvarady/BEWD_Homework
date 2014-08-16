# DEFINES SECRET NUMBER

number = 69

# Gets user input for guess

def user_guess
	print "Guess a number between 1 and 100: "
	gets.chomp.to_i
end

# Evaluates user guess, puts feedback

def check_number(guess, number)

	if guess > number
		puts "Too high!"
	elsif guess < number
		puts "Too low!"
	else
		puts "Wow, you guessed my secret number!"
	end

end

puts "Hey, wanna play the Secret Number Game?"
guess = user_guess
evaluate = check_number(guess, number)




