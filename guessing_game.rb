rand_num = rand(1..100)
attempts = 0
guesses = []

def game_start
  puts "Please choose a number between 1 and 100.\n"
end

def user_guess
  gets.chomp.to_i
end

while attempts < 5
  num = user_guess
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
  elsif num > rand_num
    puts "Number guessed was too high, please select a lower number"
    attempts += 1
  end
end

puts "You have run out of attempts, the number was #{rand_num} please come back and play again."
