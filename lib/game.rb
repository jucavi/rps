#!/lib/game.rb

class Game
  attr_reader :mode, :player1 , :player2

  require "./game/rules.rb"
  require './game/init_classes.rb'
  require "./game/players.rb"

  def init
    load_requirements
  end

  private
  def instruccions

  end

  def load_requirements
    @mode = InitClasses::Shapes.new(Rules::RPS)
    @player1 = Players::Human.new(@mode,  "JC")
    @player2 = Players::Computer.new(@mode)
  end
end
