# Rock Paper Scissors Lizard Spock

# Constants
VALID_CHOICES = %w(r p x l s)
WIN_HASH = { r: ['x', 'l'],
             p: ['r', 's'],
             x: ['p', 'l'],
             l: ['s', 'p'],
             s: ['x', 'r'] }
# Methods
def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WIN_HASH[first].include?(second)
end

def display_results(player, computer)
  if win?(player.to_sym, computer)
    prompt("You won!")
  elsif win?(computer.to_sym, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def announce_champion(x, y)
  if x == 5
    prompt("-------------------------------------------------------------")
    prompt("You've reached #{x} wins!")
    prompt("Congratulations, You are the Grand Champion!")
    prompt("-------------------------------------------------------------")
  elsif y == 5
    prompt("-------------------------------------------------------------")
    prompt("The Computer has reached #{y} wins and is the Grand Champion!")
    prompt("Better luck next time!")
    prompt("-------------------------------------------------------------")
  else
    prompt("Thank you for playing. Goodbye!")
  end
end

# Main Game
welcome_prompt = <<-HRB
Welcome to Rock, Paper, Scissors, Lizard, Spock!
The first to 5 wins is deemed the grand champion.
--------------------------------------------------
HRB
choice_prompt = <<-HRB
Select 'r' for Rock, 'p' for Paper, 'x' for Scissors,
'l' for Lizard, and 's' for Spock
--------------------------------------------------
HRB

player_score = 0
comp_score = 0

prompt(welcome_prompt)
loop do
  choice = ''

  loop do
    prompt(choice_prompt)
    prompt("Current score: player: #{player_score} computer: #{comp_score}")
    prompt("--------------------------------------------------")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      puts "That's an invalid choice, please try again."
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{choice.upcase}; Computer chose: #{computer_choice.upcase}")

  display_results(choice, computer_choice)

  if win?(choice.to_sym, computer_choice)
    player_score += 1
    break if player_score >= 5
  elsif win?(computer_choice.to_sym, choice)
    comp_score += 1
    break if comp_score >= 5
  else
    prompt("No one scored a victory.")
  end

# Another round?
  prompt("Would you like to play again?" "(Y/N)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

announce_champion(player_score, comp_score)
