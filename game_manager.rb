class GameManager
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_manager = TurnManager.new(player1, player2)
  end

  def play
    until game_over?
      @turn_manager.new_turn(QuestionGenerator.generate)
    end
    print_winner
  end

  private

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def print_winner
    if @player1.score > @player2.score
      puts "Player 1 wins with a score of #{player1.score}/3"
    elsif @player2.score > @player1.score
      puts "Player 2 wins with a score of #{player2.score}/3"
    else
      puts "It's a tie!"
    end
  end

  def player1
    @player1
  end

  def player2
    @player2
  end
end
