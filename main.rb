require_relative "player"
require_relative "question_generator"
require_relative "answer_checker"
require_relative "turn_manager"
require_relative "game_manager"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = GameManager.new(player1, player2)

game.play

puts "---- Game Over ----"
puts "Good bye!"
