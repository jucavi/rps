#!/lib/game/player.rb

class Player

  def initialize(name = "computer")
    @won = 0
    @lose = 0
    @name =  name
  end

  def  won
    @won +=1
  end

  def lose
    @lose += 1
  end
end
