class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
  def end_life
    @lives -= 1
  end
end

