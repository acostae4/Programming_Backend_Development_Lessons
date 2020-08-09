GAME_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
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

loop do
  player_choice = ''
  loop do
    prompt("Pick one of the choices: #{GAME_CHOICES.join(', ')}!")
    player_choice = gets.chomp
    if GAME_CHOICES.include?(player_choice)
      break
    else
      prompt("Invalid choice. Try again!")
    end
  end

  computer_choice = GAME_CHOICES.sample
  prompt("You chose #{player_choice} and the computer chose #{computer_choice}")

  display_results(player_choice, computer_choice)

  prompt("Play again? (Y for yes)")
  continue = gets.chomp
  break unless continue.downcase.start_with?('y')
end

prompt('Thanks for playing!')
