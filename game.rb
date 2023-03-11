class Game
  attr_accessor :turn, :p1_lives, :p2_lives

  def initialize
    @turn = 1
    @p1_lives = 3
    @p2_lives = 3
  end

  def end_game
    puts "Player 1: #{@p1_lives} lives."
    puts "Player 2: #{@p2_lives} lives."
    puts "-------- GAME OVER -------"
    # exit script
    exit(0)
  end

  def deduct_lives(turn)
    if turn == 1
      @p1_lives -= 1
    else
      @p2_lives -= 1
    end
    if @p1_lives == 0 || p2_lives == 0
      end_game
    end
  end

  def new_turn(turn)
    if turn == 1
      @turn = 2
    else
      @turn = 1
    end
    start_game
  end

  def start_game
    puts "Player 1 has #{self.p1_lives}/3 lives and Player 2 has #{self.p2_lives}/3 lives"
    puts ""
    question = Question.new(turn)
    if !question.reveal_question
      deduct_lives(turn)
    end
      new_turn(turn)
  end

end