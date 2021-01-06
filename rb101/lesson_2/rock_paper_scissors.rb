VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
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
prompt("Welcome to Rock(r), Paper(p), Scissors(x), Lizard(l), Spock(s)!")
prompt("-----------")
prompt("The first to 5 wins will be crowned the Grand Winner!")
prompt("-----------")

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    # abbreviations of our keywords to allow for better user experience
    if choice == 'r'
      choice = 'rock'
    elsif choice == 'p'
      choice = 'paper'
    elsif choice == 'x'
      choice = 'scissors'
    elsif choice == 'l'
      choice = 'lizard'
    elsif choice == 's'
      choice = 'spock'
    else
      prompt("That's not a valid choice.")
    end

    # verifying user input
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  # scoring logic
    if win?(choice, computer_choice)
      user_score += 1
      prompt("Player's score #{user_score}!")
    elsif win?(computer_choice, choice)
      computer_score += 1
      prompt("The computer's score is #{computer_score}.")
    else
      prompt("Neither has scored a win, try again!")
    end

    break if user_score >= 5 || computer_score >=5

    prompt("Do you want to play again?")
    answer = gets.chomp

    break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
