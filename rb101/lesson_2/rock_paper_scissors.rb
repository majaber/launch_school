
ABBREVIATION = %w(r p sc l sp)
WIN_CON = {
  'rock' => ["scissors", "lizard"],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}
VALID_CHOICES = WIN_CON.keys

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WIN_CON[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# setting scoring variables
user_score = 0
computer_score = 0

# the start of our game and main loop
prompt("Welcome to Rock(r), Paper(p), Scissors(sc), Lizard(l), Spock(sp)!")
prompt("-----------")
prompt("The first to 5 wins will be crowned the Grand Winner!")
prompt("-----------")

loop do
  choice = ''
  loop do
    prompt("Player: #{user_score} wins | Computer : #{computer_score} wins")
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That is invalid!")
    end

  computer_choice = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample

  system("clear")

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  # scoring logic
  if win?(choice, computer_choice)
    user_score += 1
    prompt("The Player's score: #{user_score}")
    prompt("The Computer's score: #{computer_score}")
  elsif win?(computer_choice, choice)
    computer_score += 1
    prompt("The computer's score: #{computer_score}.")
    prompt("Player's score: #{user_score}")
  else
    prompt("Neither has scored a win, try again!")
  end

  break if user_score >= 5 || computer_score >= 5

  answer = ''
  loop do
    prompt("Do you want to play again? (y/n)")
    answer = gets.chomp.downcase

    if answer == 'y'
      break
    elsif answer == 'n'
      break
    else
      prompt("Invalid input!")
    end
  end

  system("clear")

  break unless answer.downcase.start_with?('y')
end
#
# if user_score == 5
#   prompt("Congratulations, You are the Grand Champion! Goodbye!")
# elsif computer_score == 5
#   prompt("The Computer is the Grand Champion! Better luck next time, Goodbye!")
# else
#   prompt("Thank you for playing. Goodbye!")
# end
