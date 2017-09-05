#!/lib/game/players.rb

module Players
  class Player
    attr_reader :name, :shapes, :won, :waste

    def initialize(shapes, name = "Computer")
      @won = 0
      @waste = 0
      @shapes =  shapes
      @name = name
    end

    def  win
      @won += 1
    end

    def lose
      @waste += 1
    end
  end

  class  Human < Player

    def initialize(shapes, name)
      super
      @name = name
    end

    def name(player)
      "#{player}" + @name
    end

    def player_shape(user_input)
      @shapes[user_input]
    end
  end

  class  Computer  < Player

    def player_shape
        @shapes[@shapes.keys.sample]
    end
  end
end
