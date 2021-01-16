#------ Declaring Constants for the game -----
VALID_ABBREV = { 'r' => 'rock',
                 'p' => 'paper',
                 'sc' => 'scissors',
                 'l' => 'lizard',
                 'sp' => 'spock' }
GOAL_SCORE = 5
WINNING_MOVE = {
  'r' => { full_word: 'rock', beats: %w(l sc) },
  'p' => { full_word: 'paper', beats: %w(r sp) },
  'sc' => { full_word: 'scissors', beats: %w(p l) },
  'sp' => { full_word: 'Spock', beats: %w(sc r) },
  'l' => { full_word: 'lizard', beats: %w(sp p) }
}
#---------- Methods ----------
def prompt(message)
  puts("=> #{message}")
end

def print_moves
  puts <<~PRMP
  Select your move: r for Rock, p for Paper, sc for scissors
                    l for Lizard, or sp for Spock
  PRMP
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

def another_round?
  loop do
    puts "Would you like to play again?(y/n) "
    rematch = gets.chomp.downcase.strip
    case rematch
    when 'yes', 'y'
      break true
    when 'no', 'n'
      break false
    else
      puts "Invalid answer. Please type Y or N"
    end
  end
end

def grand_champion?(score)
  score[:player] == GOAL_SCORE || score[:comp] == GOAL_SCORE
end

#---------- Game Start ----------
score = { player_score: 0, comp_score: 0 }

prompt("Welcome to Rock(r), Paper(p), Scissors(sc), Lizard(l), Spock(sp)!")
prompt("----------------------------------------------------------------")
prompt("The first to 5 wins is granted the title of Grand Champion!")

loop do
  loop do
    choice = ''
    loop do
      prompt("----------------------------------------------------------------")

      print_moves

      choice = gets.chomp.downcase

      if WINNING_MOVE.include?(choice)
        break
      else
        prompt("That's not a valid choice. Try again.")
      end
    end

    system("clear")

    computer_choice = VALID_ABBREV.keys.sample

    prompt("You chose: #{WINNING_MOVE[choice][:full_word]}")
    prompt("Computer chose: #{WINNING_MOVE[computer_choice][:full_word]}")

    display_results(choice, computer_choice)
    prompt("----------------------------------------------------------------")

    if win?(choice, computer_choice)
      score[:player_score] += 1
      prompt("The Player's score: #{score[:player_score]}")
      prompt("The Computer's score: #{score[:comp_score]}")
      break if score[:player_score] >= 5
    elsif win?(computer_choice, choice)
      score[:comp_score] += 1
      prompt("The computer's score: #{score[:comp_score]}.")
      prompt("Player's score: #{score[:player_score]}")
      break if score[:comp_score] >= 5
    else
      prompt("Neither has scored a win, try again!")
    end

    break if grand_champion?(score)
  end

  announce_champion(score[:player_score], score[:comp_score])

  #---------- Another round? ----------
  if another_round?
    score[:player_score] = 0
    score[:comp_score] = 0
    system("clear")
  else
    prompt("Thank you for playing, Goodbye!")
    break
  end
end
