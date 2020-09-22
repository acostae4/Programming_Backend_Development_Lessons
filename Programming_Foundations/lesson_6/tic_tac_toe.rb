require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def display_board(brd)
  puts "You're an #{PLAYER_MARKER} : Computer is an #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |   #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}   "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |   #{brd[9]}  "
  puts "     |     |     "
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_move!(brd)
  square = ''
  loop do
    puts "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      puts "Sorry, that is not a valid choice."
    end
  end

  brd[square] = PLAYER_MARKER
end

def computer_move!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd)
    break if square
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count('O') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  elsif board.values_at(*line).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

def joinor(available_array, delimiter=', ', word='or')
  case available_array.size
  when 0 then ''
  when 1 then available_array.first
  when 2 then available_array.join(" #{word} ")
  else
    available_array[-1] = "#{word} #{available_array.last}"
    available_array.join(delimiter)
  end
end

def five_wins?(player, computer)
  if player == 5 || computer == 5
    true
  end
end

player_score = 0
computer_score = 0
loop do
  board = initialize_board

  loop do
    display_board(board)

    player_move!(board)
    break if someone_won?(board) || board_full?(board)

    computer_move!(board)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    puts "#{detect_winner(board)} won!"
  else
    puts "It's a tie!"
  end
  display_board(board)

  if detect_winner(board) == 'Player'
    player_score += 1
  elsif detect_winner(board) == 'Computer'
    computer_score += 1
  end

  puts "Score: Player (#{player_score}) | Computer (#{computer_score})"
  break if five_wins?(player_score, computer_score)

  puts "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
puts "Thanks for playing!"
