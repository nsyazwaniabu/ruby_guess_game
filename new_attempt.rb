puts "Welcome to Guess A Number game!"
puts "Guess a number within 6 tries."

puts "Choose your level: Easy, Medium, Hard"
user_level = gets.chomp
puts "Level: #{user_level}"

def easy
	secret_number = rand(1..10)
	game (secret_number)
end

def medium
	secret_number = rand(1..50)
	game (secret_number)
end

def hard
	secret_number = rand(1..100)
	game (secret_number)
end

def game (secret_number)
	count = 1
	guess_number = []

	while count <= 6
		user_number = 0

		loop do
			puts "Guess a number: "
			user_number = gets.chomp.to_i
			puts "You guessed #{user_number}"
			count = count + 1

			if guess_number.include?(user_number)
				puts "You've already guess that number. Try again"
			else
				guess_number << user_number
				break
			end
		end

		if user_number < secret_number
			puts "Too low"
			puts "So far, you've already guessed #{guess_number}"
		elsif user_number > secret_number
			puts "Too high"
			puts "So far, you've already guessed #{guess_number}"
		else
			puts "Correct!"
			break
		end
	end

	puts "The correct number is: #{secret_number}"
end

if user_level == "Easy"
	puts "Guess a number from 1-10."
	easy
elsif user_level == "Medium"
	puts "Guess a number from 1-50."
	medium
elsif user_level == "Hard"
	puts "Guess a number from 1-100."
	hard
else
	puts "Error."
end
