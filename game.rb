# require both players andquestions class
require './players'
require './questions'
#create Game class and use playerTurn as attr_accessor

class Game
  attr_accessor :player_turn
  
  # contructor will have new players and each player will have 3 lives
  def initialize
    @first_player = Player.new("P1")
    @second_player = Player.new("P2")
    @current_player = "P1"
    @first_player_lives = "#{@first_player.lives}/3"
    @second_player_lives = "#{@second_player.lives}/3"
    @game_over = false

    until @game_over
      play
    end
  end
    def play
      puts "----New Turn----"
      new_question = Questions.new(@current_player)
      #check if question is oncorrect remove life
      if !new_question.answer
       change_life
      end

      # change turn after each wrong answer
      if @current_player == 'P1'
        @current_player = 'P2'

      else
        @current_player = 'P1'
      
      end

      puts "p1 : #{@first_player_lives} vs p2 : #{@second_player_lives}"

  end

  #checking the lifes remaining
  def change_life
   if  @current_player == 'P1'
      @first_player.end_life
      @first_player_lives = "#{@first_player.lives}/3"
    if(@first_player.lives == 0)
      @game_over = true;
      puts "--Game Over--P2 Has Won The Game"
      
    end
  else
    @second_player.end_life
    @second_player_lives = "#{@second_player.lives}/3"
    if(@second_player.lives == 0)
      @game_over = true
      puts "--Game Over--P1 is the WINNER"
  end

end

end

end
