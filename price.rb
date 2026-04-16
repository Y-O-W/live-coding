# THE PRICE IS RIGHT

# generate random number from 1..100
random = (1..100).to_a.sample # OR random = rand(1..100)

# greet the player, ask for their guess
puts "Welcome to the Price is Right!"
puts "Guess the price"

# get guess from player
guess = gets.chomp.to_i

# check the guess is a valid number in our range, keep asking until it is
while guess < 1 || guess > 100
  puts "Please enter a number between 1 - 100"
  guess = gets.chomp.to_i
end

# initialise the guess counter
counter = 1

# start the loop until the guess is correct
until guess == random
  # compare random number with guess
  if guess > random
    puts "Too high!"
  else
    puts "Too low!"
  end
  # get guess from player
  puts "Guess the price"
  # check the guess is a valid number in our range, keep asking until it is
  while guess < 1 || guess > 100
    puts "Please enter a number between 1 - 100"
    guess = gets.chomp.to_i
  end
  # increase the counter
  counter += 1 # counter = counter + 1
end
# inform player they are correct
puts "You win! You guessed in #{counter} guesses"

# LOOPS - which one to use?
# while "while this is greater than that, while this does equal this"
# until "until this is lower than this"
