#------ Declaring Constants for the game -----
VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_ABBREV = { 'r' => 'rock',
                 'p' => 'paper',
                 'sc' => 'scissors',
                 'l' => 'lizard',
                 'sp' => 'spock'
               }

WINNING_MOVE = {
  'r' => { full_word: 'rock', beats: %w(l sc) },
  'p' => { full_word: 'paper', beats: %w(r sp) },
  'sc' => { full_word: 'scissors', beats: %w(p l) },
  'sp' => { full_word: 'Spock', beats: %w(sc r) },
  'l' => { full_word: 'lizard', beats: %w(sp p) }
}
#----- Methods -----
def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_MOVE[first][:beats].include?(second)
end

def display_results(player1, player2)
  if win?(player1, player2)
    prompt("You won!")
  elsif win?(player2, player1)
    prompt("The Computer won!")
  else
    prompt("It's a tie!")
  end
end

def announce_champion(x, y)
  if x == 5
    prompt("Congrats on #{x} wins!")
    prompt("Congratulations, You are the Grand Champion! Goodbye!")
  elsif y == 5
    prompt("The Computer has reached #{y} wins and is the Grand Champion!")
    prompt("Better luck next time, Goodbye!")
  else
    prompt("Thank you for playing. Goodbye!")
  end
end

#----- Scoring Variables -----
player_score = 0
comp_score = 0

#----- Game Start -----
prompt("Welcome to Rock(r), Paper(p), Scissors(sc), Lizard(l), Spock(sp)!")
prompt("----------")
prompt("The first to 5 wins is granted the title of Grand Champion!")
prompt("----------")
loop do
  choice = ''
  loop do
    prompt("Player's score: #{player_score} | Computer's score: #{comp_score}")
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    if WINNING_MOVE.include?(choice)
      break
    else
      prompt("That's not a valid choice.  Try again.")
    end
  end

  system("clear")

  computer_choice = ['r', 'p', 'sc', 'l', 'sp'].sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
    prompt("The Player's score: #{player_score}")
    prompt("The Computer's score: #{comp_score}")
    break if player_score >= 5
  elsif win?(computer_choice, choice)
    comp_score += 1
    prompt("The computer's score: #{comp_score}.")
    prompt("Player's score: #{player_score}")
    break if comp_score >= 5
  else
    prompt("Neither has scored a win, try again!")
  end

#----- Play again? -----
  answer = ''
  loop do
      prompt("Do you want to play again? (y/n)")
      answer = gets.chomp.downcase

      if answer == 'y' || answer == 'yes'
        break
      elsif answer == 'n' || answer == 'no'
        break
      else
        prompt("Invalid input!")
      end
  end

  system("clear")

  break unless answer.downcase.start_with?('y')
end

announce_champion(player_score, comp_score)