class TurnManager
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def new_turn(question)
    puts "----- New Turn -----"
    puts "#{current_player.name}: #{question}"
    answer = gets.chomp.to_i
    if AnswerChecker.correct?(question, answer)
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.incorrect_answer
      if current_player.lives == 0
        puts "#{current_player.name} has no lives left. Game over!"
        exit
      end
    end
    print_score
    switch_player
  end

  private

  attr_reader :current_player

  def print_score
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  def switch_player
    @current_player = (@current_player == player1) ? player2 : player1
  end

  def player1
    @player1
  end

  def player2
    @player2
  end
end
