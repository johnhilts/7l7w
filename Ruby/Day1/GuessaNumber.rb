number = rand(10) + 1

puts "I chose #{number}"

guessed = false

while not guessed do
	puts "Guess a number"
	guess = gets 

	guessedNumber = guess.to_i
	if guessedNumber.to_i == number
		puts "Good guess!"
		guessed = true
	else
		puts "Wrong - the number was #{number <  guessedNumber ? "lower" : "higher"}"
	end
end
