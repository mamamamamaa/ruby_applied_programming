require 'colorize'

$moves = %w[ROCK SCISSORS PAPER]

def run_game
	user_move = ARGV[0].upcase
	is_valid = check_is_valid_move(user_move)

	unless is_valid
		return print_error("Invalid move!")
	end

	ai_move = make_ai_move

	winner = get_winner(user_move, ai_move)

	print_result(user_move, ai_move, winner)

end

def check_is_valid_move (move)
	unless move and $moves.include?(move)
		return false
	end

	true
end

def make_ai_move
	random_index = rand(3)

	$moves[random_index]
end

def get_winner(user_move, ai_move)
	if user_move == ai_move
		"It's a tie"
	elsif (user_move == "ROCK" && ai_move == "SCISSORS") ||
		(user_move == "SCISSORS" && ai_move == "PAPER") ||
		(user_move == "PAPER" && ai_move == "ROCK")
		return "User wins"
	else
		"AI wins"
	end
end

def print_result(user_move, ai_move, winner)
	puts "User move: #{user_move};".colorize(:green)
	puts "AI move: #{ai_move};".colorize(:yellow)
	puts "\nResult: #{winner}!".colorize(:blue)
end

def print_error(message)
	puts "#{message}".colorize(:red);
end

run_game
