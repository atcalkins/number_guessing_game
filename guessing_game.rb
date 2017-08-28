random_num = rand(1..100)
attempts = 0
guesses = []

print "Welcome to the Guessing Game, please choose a number between 1 and 100.\n"

while attempts <= 5
  print "Please select a number between 1 and 100"

  # def user_guess
  #   gets.chomp.to_i
  # #puts a message here to show they guessed?
  # end

  num = gets.chomp.to_i

  if guesses.include? num
    puts "Number has already been guessed."
  end

  if guesses.include?
    puts "Incorrect, please select a different number between 1 and 100"

    print input_prompt

    here
  end

  guesses.push num

  if num == rand_num
    puts "Correct! You win!!!!!"
    exit

  elsif num < rand_num
    puts "Number guessed was too low, please select a higher number"
    attempts += 1

  else num > rand_num
    puts "Number guessed was too high, please select a lower number"
    attempts += 1
  end
end
# if they lost print losing message here?
print "Game over, please come back and play again."
