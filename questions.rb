class Questions
  attr_accessor :answer

  def initialize(curr_player)
    @curr_player = curr_player
    @num1 = rand(10)
    @num2 = rand(10)
    @total = @num1 + @num2
    puts "#{curr_player} : what is #{@num1} + #{@num2}? "

    check_answer
  end
  def check_answer
    given_answer = gets.chomp

    if given_answer == @total.to_s
      puts 'Yes. You are correct..'
      @answer = true
    else
      puts 'No..You are wrong..'
      @answer = false
    end
  end
end


