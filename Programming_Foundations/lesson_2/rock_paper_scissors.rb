GAME_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You've won!")
  elsif win?(computer, player)
    prompt("The computer has won!")
  else
    prompt("You tied!")
  end
end

def determine_grand_winner(player, computer)
  if player == 5
    prompt("Congrats, you are the grand winner!!!")
  elsif computer == 5
    prompt("Sorry, The computer is the grand winner!")
  end
end

player_score = 0
computer_score = 0
loop do
  player_choice = ''
  loop do
    prompt("Pick one of the choices: #{GAME_CHOICES.join(', ')}! (r, p, s, l, o)")
    player_choice = gets.chomp
    if GAME_CHOICES.include?(player_choice)
      break
    else
      case player_choice[0]
      when 'r'
        player_choice = 'rock'
        break
      when 'p'
        player_choice = 'paper'
        break
      when 's'
        player_choice = 'scissors'
        break
      when 'l'
        player_choice = 'lizard'
        break
      when 'o'
        player_choice = 'spock'
        break
      else
        prompt("Invalid choice. Try again!")
      end
    end
  end

  computer_choice = GAME_CHOICES.sample
  prompt("You chose #{player_choice} and the computer chose #{computer_choice}")
  display_results(player_choice, computer_choice)
  if win?(player_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, player_choice)
    computer_score += 1
  end
  prompt("Score: #{player_score} - #{computer_score}")
  determine_grand_winner(player_score, computer_score)

  prompt("Play again? (Y for yes)")
  continue = gets.chomp
  break unless continue.downcase.start_with?('y')
end

prompt('Thanks for playing!')
