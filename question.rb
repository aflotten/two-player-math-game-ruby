class Question
  attr_accessor :turn
  
  def initialize(turn)
    @turn = turn
  end
  
  def reveal_question
    num1 = rand(1..50)
    num2 = rand(1..50)
    
    puts "------- NEW TURN -------"
    puts ""
    puts "Player #{@turn}: What is #{num1} + #{num2}?"
    print "> "

    attempted_answer = $stdin.gets.chomp.to_i
    ans = num1 + num2

    if ans == attempted_answer
      puts "That is correct! Good work."
      return true
    else
      puts "That is incorrect! Better luck next time"
      return false
    end
  end
end
