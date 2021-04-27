# Rock Paper Scissors Lizard Spock

# Constants
VALID_CHOICES = %w(r p sc l sp)
WIN_HASH = {
  'r' => { full_word: 'Rock', defeats: %w(l sc) },
  'p' => { full_word: 'Paper', defeats: %w(r sp) },
  'sc' => { full_word: 'Scissors', defeats: %w(p l) },
  'l' => { full_word: 'Lizard', defeats: %w(sp p) },
  'sp' => { full_word: 'Spock', defeats: %w(sc r) }
}
GOAL = 5

# ----------Score Hash----------
score_hash = { player_score: 0, comp_score: 0}

# ----------Methods----------
def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WIN_HASH[first][:defeats].include?(second)
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

def play_again?
  loop do
    prompt("Would you like to play again?(Y/N)")
    answer = gets.chomp.downcase
    if answer == 'y'
      system('clear')
      return true
    elsif answer == 'n' || answer == 'no'
      return false
    else
      prompt("Please enter a valid input...")
    end
  end
end
# ----------Game Start----------
welcome_prompt = <<-HRB
Welcome to Rock, Paper, Scissors, Lizard, Spock!
The first to 5 wins is deemed the grand champion.
--------------------------------------------------
HRB
rules_prompt = <<-HRB
Scissors cuts Paper covers Rock crushes Lizard poisons Spock
smashes Scissors decapitates Lizard eats Paper disproves
Spock vaporizes Rock crushes Scissors!
--------------------------------------------------
HRB
choice_prompt = <<-HRB
Select 'r' for Rock, 'p' for Paper, 'sc' for Scissors,
'l' for Lizard, and 'sp' for Spock
--------------------------------------------------
HRB

player_score = 0
comp_score = 0

system('clear')

prompt(welcome_prompt)
prompt(rules_prompt)
loop do
  choice = ''
  loop do
    loop do
      prompt(choice_prompt)
      prompt("Player wins: #{player_score} Computer wins: #{comp_score}")
      prompt("--------------------------------------------------")
      choice = gets.chomp.downcase.strip

      if VALID_CHOICES.include?(choice)
        break
      else
        puts "That's an invalid choice, please try again."
      end
    end

    computer_choice = VALID_CHOICES.sample

    system('clear')

    prompt("You chose: #{WIN_HASH[choice][:full_word]}")
    prompt("The Computer chose: #{WIN_HASH[computer_choice][:full_word]}")

    display_results(choice, computer_choice)

    sleep(0.4)

    if win?(choice, computer_choice)
      player_score += 1
      break if player_score >= 5
    elsif win?(computer_choice, choice)
      comp_score += 1
      break if comp_score >= 5
    else
      prompt("No one scored a victory.")
    end
  end

  announce_champion(player_score, comp_score)
  player_score = 0
  comp_score = 0

  break unless play_again?
  system('clear')

end

prompt("Thank you for playing! Good bye!")
