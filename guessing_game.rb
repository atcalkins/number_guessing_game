rand_num = rand(1..100)
attempts = 0
guesses = []

  def game_start
    puts "Please choose a number between 1 and 100.\n"
  end

  while attempts < 5
    print game_start

  def user_guess
    gets.chomp.to_i
  end

  num = user_guess

  #puts a message here to show they guessed
  if guesses.include? num
    puts "Number has already been guessed."
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
puts "Game over, the number was #{rand_num} please come back and play again."
